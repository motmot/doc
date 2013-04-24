# encoding: utf-8

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "precise64"
  config.vm.box_url = "http://files.vagrantup.com/precise64.box"
  config.ssh.forward_agent = true

  config.vm.provision :shell, :path => "source/_static/install-fview.sh"
end
