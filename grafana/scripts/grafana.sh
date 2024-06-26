#!/bin/bash

# Verificar se o usuário é root
if [ "$(id -u)" -ne 0 ]; then
  echo "This script only run if you are root user!!!"
  exit 1
fi

# Adicionar o repositório Grafana
cat <<EOF > /etc/yum.repos.d/grafana.repo
[grafana]
name=Grafana OSS
baseurl=https://packages.grafana.com/oss/rpm
repo_gpgcheck=1
enabled=1
gpgcheck=1
gpgkey=https://packages.grafana.com/gpg.key
EOF

# Atualizar a lista de pacotes
dnf update -y

# Instalar o Grafana
dnf install grafana -y

# Iniciar e habilitar o serviço Grafana
systemctl start grafana-server
systemctl enable grafana-server

# Esperar o Grafana iniciar
sleep 10

# Alterar a senha inicial
GRAFANA_URL="http://localhost:3000"
OLD_PASSWORD="admin"
NEW_PASSWORD="prom-operator"

curl -s -X PUT \
  -H "Content-Type: application/json" \
  -d "{\"oldPassword\": \"${OLD_PASSWORD}\", \"newPassword\": \"${NEW_PASSWORD}\", \"confirmNew\": \"${NEW_PASSWORD}\"}" \
  ${GRAFANA_URL}/api/user/password \
  -u admin:${OLD_PASSWORD}

# # Importar JSON dashboard Process Exporter
# DASHBOARD_JSON_PATH="grafana/dashboards/process-exporter.json"
# DASHBOARD_JSON=$(cat ${DASHBOARD_JSON_PATH})
# IMPORT_JSON=$(jq -n --argjson dashboard "${DASHBOARD_JSON}" '{dashboard: $dashboard, overwrite: true, folderId: 0}')

# curl -s -X POST \
#   -H "Content-Type: application/json" \
#   -d "${IMPORT_JSON}" \
#   ${GRAFANA_URL}/api/dashboards/db \
#   -u admin:${NEW_PASSWORD}


# Configurações para importação do dashboard
GRAFANA_URL="http://localhost:3000"  # URL local do Grafana
GRAFANA_USER="admin"
DASHBOARD_ID="249" # Substitua pelo ID do dashboard
FOLDER_ID=0 # Substitua pelo ID da pasta onde deseja importar o dashboard
OVERWRITE=true # Substitua por false se não quiser sobrescrever dashboards existentes

# Verifica se jq está instalado
if ! command -v jq &> /dev/null
then
    echo "jq could not be found, please install jq to proceed"
    exit 1
fi

# Busca o dashboard JSON do Grafana Labs
DASHBOARD_JSON=$(curl -s "https://grafana.com/api/dashboards/${DASHBOARD_ID}/revisions/latest/download")

# Verifica se o dashboard JSON foi baixado corretamente
if [ -z "$DASHBOARD_JSON" ]; then
    echo "Failed to download dashboard JSON from Grafana Labs"
    exit 1
fi

# Substituir variáveis de data source no JSON
PROMETHEUS_UID=$(curl -s -u ${GRAFANA_USER}:${NEW_PASSWORD} "${GRAFANA_URL}/api/datasources" | jq -r '.[] | select(.type=="prometheus") | .uid')

if [ -z "$PROMETHEUS_UID" ]; then
    echo "Failed to get Prometheus data source UID"
    exit 1
fi

DASHBOARD_JSON=$(echo "$DASHBOARD_JSON" | sed "s/\${DS_PROMETHEUS}/$PROMETHEUS_UID/g")

# Monta o payload para importar o dashboard
IMPORT_JSON=$(jq -n --argjson dashboard "$DASHBOARD_JSON" --arg folderId "$FOLDER_ID" --argjson overwrite "$OVERWRITE" \
  '{dashboard: $dashboard, folderId: $folderId | tonumber, overwrite: $overwrite}')

# Importa o dashboard para o Grafana usando autenticação básica
RESPONSE=$(curl -s -X POST \
  -u ${GRAFANA_USER}:${NEW_PASSWORD} \
  -H "Content-Type: application/json" \
  -d "$IMPORT_JSON" \
  "${GRAFANA_URL}/api/dashboards/db")

# Verifica o resultado da importação
if echo "$RESPONSE" | grep -q '"status":"success"'; then
  echo "Dashboard imported successfully"
else
  echo "Failed to import dashboard. Response: $RESPONSE"
fi


echo ""
echo "Grafana Install finish. Access web interface in http://192.168.0.133:3000"
echo "Use credentials: User - admin, Password - ${NEW_PASSWORD}"
