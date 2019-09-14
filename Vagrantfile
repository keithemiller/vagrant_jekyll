# -*- mode: ruby -*-
# vi: set ft=ruby :


## Can only connect in git-bash not powershell

Vagrant.configure("2") do |config|
  ## Vagrantbox
  config.vm.box = "ubuntu/xenial64"
  ## Autoupdate box
  config.vm.box_check_update = true

  ## Local forwarded port not forwarded to external ports
  config.vm.network "forwarded_port", guest: 80, host: 8080

  ## Shared folder to virtual machine 
  config.vm.synced_folder "shared_data", "/vagrant_data"


  ## Provider specific options
  config.vm.provider "virtualbox" do |vb|
    ## Virtual machine name
    vb.name = "Jekyll Machine"

    ## 2 CPUS
    vb.cpus = 2


    ## 1 GB of memory
    vb.memory = "1024"
  end
  
  ## PROVISIONING
  config.vm.provision "shell", path: "provision.sh"

end
