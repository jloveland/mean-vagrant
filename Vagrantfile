# encoding: utf-8

# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  config.vm.box = "opscode-ubuntu-12.04_chef-11.4.0"
  config.vm.box_url = "https://opscode-vm-bento.s3.amazonaws.com/vagrant/opscode_ubuntu-12.04_chef-11.4.0.box"

  config.vm.provider "virtualbox" do |v|
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.network "forwarded_port", guest: 3000, host: 3000
  config.ssh.forward_agent = true

  config.berkshelf.enabled = true

  # Workaround for "sudo: sorry, you must have a tty to run sudo" error. See
  # https://github.com/mitchellh/vagrant/issues/1482 for details.
  config.ssh.pty = true

  config.vm.synced_folder "~/Code/", "/home/vagrant/Code", create: true

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe 'apt'
    chef.add_recipe 'vim'
    chef.add_recipe "mongodb::10gen_repo"
    chef.add_recipe "mongodb"
    chef.add_recipe 'nodejs'
    chef.add_recipe 'git'

    if ENV['VAGRANT_DEBUG']
      chef.log_level = :debug
    end

    chef.json = {
      :mongodb => {
        # :package_version => "2.6.1",
        :dbpath  => "/var/lib/mongodb",
        :logpath => "/var/log/mongodb",
        :port    => "27017"
      },
      :git     => {
        :prefix => "/usr/local"
      }
   }
  end

  config.vm.provision :shell, :path => "bootstrap.sh"

end
