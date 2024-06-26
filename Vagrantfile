# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "silvestrini-rocky9"

  # LOCAL VARIABLES
  VM_NAME = "rock9-prometheus"

  ## MOUNTS
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "prometheus/", "/home/vagrant/prometheus"
  config.vm.synced_folder "grafana/", "/home/vagrant/grafana"

  # Definições da primeira VM - Prometheus 1 - PushGateway
  config.vm.define "#{VM_NAME}-1" do |vm_config|
    vm_config.vm.provider "vmware_workstation" do |vm|
      vm.linked_clone = true
      vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}-1"
      vm.whitelist_verified = true
      vm.vmx["virtualHW.version"] = "10"
      vm.vmx["displayName"] = "#{VM_NAME}-1"
      vm.vmx["memsize"] = "2048"
      vm.vmx["numvcpus"] = "2"
      vm.vmx["cpuid.coresPerSocket"] = "1"
    end

    vm_config.vm.network "public_network", ip: "192.168.0.130", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                             "Intel(R) I211 Gigabit Network Connection",
                                             "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                           ]

    vm_config.vm.provision "shell", name: "[SCRIPT: prometheus/scripts/prometheus.sh]", path: "prometheus/scripts/prometheus.sh", privileged: false
  end

  # Definições da segunda VM - Prometheus 2 - Remote Write
  config.vm.define "#{VM_NAME}-2" do |vm_config|
    vm_config.vm.provider "vmware_workstation" do |vm|
      vm.linked_clone = true
      vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}-2"
      vm.whitelist_verified = true
      vm.vmx["virtualHW.version"] = "10"
      vm.vmx["displayName"] = "#{VM_NAME}-2"
      vm.vmx["memsize"] = "2048"
      vm.vmx["numvcpus"] = "2"
      vm.vmx["cpuid.coresPerSocket"] = "1"
    end

    vm_config.vm.network "public_network", ip: "192.168.0.131", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                             "Intel(R) I211 Gigabit Network Connection",
                                             "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                           ]

    vm_config.vm.provision "shell", name: "[SCRIPT: prometheus/scripts/prometheus.sh]", path: "prometheus/scripts/prometheus.sh", privileged: false
  end
  # Definições da terceira VM - Prometheus Federation
  config.vm.define "#{VM_NAME}-3" do |vm_config|
    vm_config.vm.provider "vmware_workstation" do |vm|
      vm.linked_clone = true
      vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}-3"
      vm.whitelist_verified = true
      vm.vmx["virtualHW.version"] = "10"
      vm.vmx["displayName"] = "#{VM_NAME}-3"
      vm.vmx["memsize"] = "2048"
      vm.vmx["numvcpus"] = "2"
      vm.vmx["cpuid.coresPerSocket"] = "1"
    end

    vm_config.vm.network "public_network", ip: "192.168.0.132", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                             "Intel(R) I211 Gigabit Network Connection",
                                             "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                           ]

    vm_config.vm.provision "shell", name: "[SCRIPT: prometheus/scripts/prometheus.sh]", path: "prometheus/scripts/prometheus.sh", privileged: false
  end
  # Definições da quarta VM - Grafana
  VM_NAME = "rock9-grafana"
  config.vm.define "#{VM_NAME}-1" do |vm_config|
    vm_config.vm.provider "vmware_workstation" do |vm|
      vm.linked_clone = true
      vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}-1"
      vm.whitelist_verified = true
      vm.vmx["virtualHW.version"] = "10"
      vm.vmx["displayName"] = "#{VM_NAME}-1"
      vm.vmx["memsize"] = "2048"
      vm.vmx["numvcpus"] = "2"
      vm.vmx["cpuid.coresPerSocket"] = "1"
    end

    vm_config.vm.network "public_network", ip: "192.168.0.133", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                             "Intel(R) I211 Gigabit Network Connection",
                                             "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                           ]

    vm_config.vm.provision "shell", name: "[SCRIPT: grafana/scripts/grafana.sh]", path: "grafana/scripts/grafana.sh", privileged: true
  end
end
