mean-vagrant
============

Vagrant configuration to use a MEAN stack development environment for Mean.js

You need download:
- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://www.vagrantup.com/downloads.html)
- [ChefDK](http://getchef.com/downloads/chef-dk)
- [Vagrant Berkshelf](https://github.com/berkshelf/vagrant-berkshelf)
- [Mean.js](https://github.com/meanjs/mean)

# Quickstart
Clone Mean.js
```Shell
$ cd ~/Code
$ git clone https://github.com/meanjs/mean.git
```
Clone mean-vagrant
```Shell
$ cd ~/Code
$ git clone https://github.com/jloveland/mean-vagrant.git
```
Startup the Vagrant machine
- drop in `cd mean-vagrant`
- run `berks install` to grab required cookbooks
- run `vagrant up` to download, provision

#Installed Software
 - Git
 - Node (Express, Bower, Grunt, Nodemon, Forever, Stylus)
 - MongoDB
 - Mean.js
