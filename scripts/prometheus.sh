#!/usr/bin/env bash

# Script for installing and configuring Prometheus Server

# Update and install prerequisites
echo "Updating system and installing prerequisites..."
sudo dnf update -y
sudo dnf install -y nodejs npm

# Check if Node.js and npm are installed
if ! command -v node &> /dev/null || ! command -v npm &> /dev/null; then
    echo "Node.js or npm could not be installed. Exiting..."
    exit 1
fi

echo "Node.js and npm installed successfully."

echo "Installing PM2..."
sudo npm install pm2@latest -g
pm2 completion install

# Install Prometheus
echo "Downloading Prometheus..."
wget -q https://github.com/prometheus/prometheus/releases/download/v2.51.2/prometheus-2.51.2.linux-amd64.tar.gz

echo "Extracting Prometheus..."
tar xvfz prometheus-*.tar.gz
rm prometheus-*.tar.gz
cd prometheus-* || exit

# Check version
./prometheus --version

# Configure Prometheus
configFile=$(find ~/prometheus-* -name prometheus.yml)
echo "Updating configuration file: $configFile"
cp ~/prometheus/configs/prometheus.yml $configFile
chmod 644 $configFile

echo "Starting Prometheus..."
pm2 start prometheus --name prometheus-server -- --config.file="$configFile"

# Node Exporter installation and setup
echo "Setting up Node Exporter..."
cd || exit

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

# PushGateway installation and setup
echo "Setting up PushingGateway..."
cd || exit

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


