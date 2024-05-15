# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "silvestrini-rocky9"

  # LOCAL VARIABLES
  VM_NAME = "rock9-prometheus"

  ## MOUNTS
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "prometheus/", "/home/vagrant/prometheus"
  config.vm.synced_folder "scripts/", "/home/vagrant/scripts"

  # Definições da primeira VM
  config.vm.define "#{VM_NAME}-1" do |vm_config|
    vm_config.vm.provider "vmware_workstation" do |vm|
      vm.linked_clone = true
      vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}-1"
      vm.whitelist_verified = true
      vm.vmx["virtualHW.version"] = "10"
      vm.vmx["displayName"] = "#{VM_NAME}-1"
      vm.vmx["memsize"] = "8192"
      vm.vmx["numvcpus"] = "6"
      vm.vmx["cpuid.coresPerSocket"] = "1"
    end

    vm_config.vm.network "public_network", ip: "192.168.0.130", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                             "Intel(R) I211 Gigabit Network Connection",
                                             "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                           ]

    vm_config.vm.provision "shell", name: "[SCRIPT: scripts/prometheus.sh]", path: "scripts/prometheus.sh", privileged: false
  end

  # Definições da segunda VM
  config.vm.define "#{VM_NAME}-2" do |vm_config|
    vm_config.vm.provider "vmware_workstation" do |vm|
      vm.linked_clone = true
      vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}-2"
      vm.whitelist_verified = true
      vm.vmx["virtualHW.version"] = "10"
      vm.vmx["displayName"] = "#{VM_NAME}-2"
      vm.vmx["memsize"] = "8192"
      vm.vmx["numvcpus"] = "6"
      vm.vmx["cpuid.coresPerSocket"] = "1"
    end

    vm_config.vm.network "public_network", ip: "192.168.0.131", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                             "Intel(R) I211 Gigabit Network Connection",
                                             "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                           ]

    vm_config.vm.provision "shell", name: "[SCRIPT: scripts/prometheus.sh]", path: "scripts/prometheus.sh", privileged: false
  end
end
