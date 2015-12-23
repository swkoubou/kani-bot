# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "boxcutter/debian82"
  config.vm.provider "virtualbox" do |vb|
    vb.memory = "1024"
  end
  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    cd /vagrant && RUBOTY_ENV=development . ./init.sh
  SHELL
end
