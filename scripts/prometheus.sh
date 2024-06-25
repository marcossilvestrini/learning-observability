#!/usr/bin/env bash

# Script for installing and configuring Prometheus Server

# Update and install prerequisites
echo "Updating system and installing prerequisites..."
sudo dnf update -y
sudo dnf install -y nodejs npm chrony

# Configure ntp server
sudo systemctl enable chronyd
sudo systemctl start chronyd
sudo chronyc makestep
chronyc tracking
chronyc sources

# Check if Node.js and npm are installed
if ! command -v node &> /dev/null || ! command -v npm &> /dev/null; then
    echo "Node.js or npm could not be installed. Exiting..."
    exit 1
fi
echo "Node.js and npm installed successfully."

echo "Installing PM2..."
if ! command -v pm2 &> /dev/null ; then
    sudo npm install pm2@latest -g
    pm2 completion install
fi


# Install Prometheus
echo "Downloading Prometheus..."
if [ -d prometheus-server ]; then    
    rm -rf prometheus-server
fi
wget -q https://github.com/prometheus/prometheus/releases/download/v2.51.2/prometheus-2.51.2.linux-amd64.tar.gz
echo "Extracting Prometheus..."
tar xvfz prometheus-*.tar.gz
rm prometheus-*.tar.gz
mv prometheus-*.*-amd64 prometheus-server

# Check version
cd prometheus-server || exit
./prometheus --version
cd || exit

# Descobrir o IP local da máquina
local_ip=$(hostname -I | tr ' ' '\n' | grep '192.168.0.')

# Verificar o IP e configurar o Prometheus
if [ "$local_ip" = "192.168.0.130" ]; then
    # Configurações para Prometheus-1
    if [ -d /var/lib/prometheus ]; then
        # Se a pasta existir, limpar o diretório wal
        echo "Folder /var/lib/prometheus exist. Clear wal..."
        rm -rf /var/lib/prometheus/wal/*
    else
        # Se a pasta não existir, criar e ajustar permissões
        echo "Folder /var/lib/prometheus not found. Create folder.."
        sudo mkdir -p /var/lib/prometheus
        sudo chown vagrant:vagrant /var/lib/prometheus
    fi
    echo "Updating configuration file: prometheus.yml"
    cp prometheus/configs/prometheus_1.yml  prometheus-server/prometheus.yml
    chmod 644 prometheus-server/prometheus.yml
    
    # basic auth
    cp prometheus/configs/web-config.yml prometheus-server/
    
    # Rules
    cp prometheus/configs/rules.yml prometheus-server/
    
    echo "Starting Prometheus..."
    cd prometheus-server || exit
    #pm2 start prometheus --name prometheus-server -- --config.file="$configFile"
    pm2 start prometheus \
    --name prometheus-server -- \
    --web.config.file=web-config.yml \
    --config.file=prometheus.yml \
    --web.enable-remote-write-receiver \
    --storage.tsdb.path=/var/lib/prometheus \
    --storage.tsdb.retention.time=15d
    cd || exit
    
    # PushGateway installation and setup
    echo "Setting up PushingGateway..."
        
    echo "Downloading PushingGateway..."
    wget -q https://github.com/prometheus/pushgateway/releases/download/v1.8.0/pushgateway-1.8.0.linux-amd64.tar.gz
    
    echo "Extracting PushingGateway..."
    tar xvfz pushgateway-*.*-amd64.tar.gz
    rm pushgateway-*.*-amd64.tar.gz
    cd pushgateway-*.*-amd64 || exit
    
    echo "Starting PushingGateway..."
    pm2 start pushgateway --name pushgateway -- --web.listen-address "192.168.0.130:9091"
    
    echo "Create as Push metrics to PushGateway..."
    echo 'training_completion{course="CKA", status="complete"} 1' > metrics.txt
    echo 'training_completion{course="CKS", status="in_progress"} 0.5' >> metrics.txt
    echo 'training_completion{course="LPIC2", status="not_started"} 0' >> metrics.txt
    curl --data-binary @metrics.txt http://192.168.0.130:9091/metrics/job/training_metrics
    
    echo "Restarting Prometheus..."
    pm2 restart prometheus-server
    cd || exit

    
    # Node Exporter installation and setup
    echo "Setting up Node Exporter..."

    echo "Downloading Node Exporter..."
    wget -q https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

    echo "Extracting Node Exporter..."
    tar xvfz node_exporter-*.*-amd64.tar.gz
    rm node_exporter-*.*-amd64.tar.gz
    cd node_exporter-*.*-amd64 || exit

    echo "Starting Node Exporter..."
    pm2 start node_exporter --name node-exporter

    echo "Restarting Prometheus..."
    pm2 restart prometheus-server
    cd || exit
        
    # Promlens installation and setup
    echo "Downloading Promlens..."
    wget -q https://github.com/prometheus/promlens/releases/download/v0.3.0/promlens-0.3.0.linux-amd64.tar.gz
    
    # Promlens not supported prometheus with basic authentication enable!!! - https://github.com/prometheus/promlens/issues/38
    echo "Extracting Promlens..."
    tar xvfz promlens-*.*-amd64.tar.gz
    rm promlens-*.*-amd64.tar.gz
    cd promlens-*.*-amd64 || exit
    
    echo "Starting Promlens..."
    pm2 start promlens \
    --name promlens -- \
    --web.listen-address "192.168.0.130:8081"
    cd || exit    
    
elif [ "$local_ip" = "192.168.0.131" ]; then
    # Configurações para Prometheus-2
    
    echo "Updating configuration file: prometheus.yml"
    cp prometheus/configs/prometheus_2.yml  prometheus-server/prometheus.yml
    chmod 644 prometheus-server/prometheus.yml
    
    # basic auth
    cp prometheus/configs/web-config.yml prometheus-server/
        
    echo "Starting Prometheus..."
    cd prometheus-server || exit
    pm2 start prometheus \
    --name prometheus-server -- \
    --config.file=prometheus.yml \
    --web.config.file=web-config.yml
    cd || exit

    
    # Node Exporter installation and setup
    echo "Setting up Node Exporter..."

    echo "Downloading Node Exporter..."
    wget -q https://github.com/prometheus/node_exporter/releases/download/v1.7.0/node_exporter-1.7.0.linux-amd64.tar.gz

    echo "Extracting Node Exporter..."
    tar xvfz node_exporter-*.*-amd64.tar.gz
    rm node_exporter-*.*-amd64.tar.gz
    cd node_exporter-*.*-amd64 || exit

    echo "Starting Node Exporter..."
    pm2 start node_exporter --name node-exporter

    echo "Restarting Prometheus..."
    pm2 restart prometheus-server
    cd || exit
        
    # Promlens installation and setup
    echo "Downloading Promlens..."
    wget -q https://github.com/prometheus/promlens/releases/download/v0.3.0/promlens-0.3.0.linux-amd64.tar.gz
    
    echo "Extracting Promlens..."
    tar xvfz promlens-*.*-amd64.tar.gz
    rm promlens-*.*-amd64.tar.gz
    cd promlens-*.*-amd64 || exit
    
    echo "Starting Promlens..."
    pm2 start promlens \
    --name promlens -- \
    --web.listen-address "192.168.0.131:8081"
    cd || exit

elif [ "$local_ip" = "192.168.0.132" ]; then
    # Configurações para Prometheus-3
    
    echo "Updating configuration file: prometheus.yml"
    cp prometheus/configs/prometheus_3.yml  prometheus-server/prometheus.yml
    chmod 644 prometheus-server/prometheus.yml
    
    # basic auth
    cp prometheus/configs/web-config.yml prometheus-server/

    # Service discovery - http_sd
    cp prometheus/configs/http_sd.json prometheus-server/
        
    echo "Starting Prometheus..."
    cd prometheus-server || exit
    pm2 start prometheus \
    --name prometheus-server -- \
    --config.file=prometheus.yml \
    --web.config.file=web-config.yml
    cd || exit
    
    # Promlens installation and setup
    echo "Downloading Promlens..."
    wget -q https://github.com/prometheus/promlens/releases/download/v0.3.0/promlens-0.3.0.linux-amd64.tar.gz
    
    echo "Extracting Promlens..."
    tar xvfz promlens-*.*-amd64.tar.gz
    rm promlens-*.*-amd64.tar.gz
    cd promlens-*.*-amd64 || exit
    
    echo "Starting Promlens..."
    pm2 start promlens \
    --name promlens -- \
    --web.listen-address "192.168.0.132:8081"
    cd || exit
    
fi




