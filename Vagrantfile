# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  config.vm.box = "silvestrini-rocky9"

  # LOCAL VARIABLES
  VM_NAME = "rock9-prometheus"

  ## MOUNTS
  config.vm.synced_folder ".", "/vagrant", disabled: true
  config.vm.synced_folder "prometheus/", "/home/vagrant/prometheus"
  config.vm.synced_folder "scripts/", "/home/vagrant/scripts"

  # CONFIGURAÇÃO DO PROVEDOR VMWARE
  config.vm.provider "vmware_workstation" do |vm|
    vm.linked_clone = true
    vm.clone_directory = "E:\\Servers\\VMWare\\#{VM_NAME}"
    vm.whitelist_verified = true
    vm.vmx["virtualHW.version"] = "10"
    vm.vmx["displayName"] = "rocky9-prometheus"
    vm.vmx["memsize"] = "8192"
    vm.vmx["numvcpus"] = "6"
    vm.vmx["cpuid.coresPerSocket"] = "1"
  end
  config.vm.network "public_network", ip: "192.168.0.130", netmask: "255.255.255.0", mode: "bridge", bridge: [
                                        "Intel(R) I211 Gigabit Network Connection",
                                        "MediaTek Wi-Fi 6 MT7921 Wireless LAN",
                                      ]

  config.vm.provision "shell", name: "[SCRIPT: scripts/prometheus.sh]", path: "scripts/prometheus.sh", privileged: false
end
