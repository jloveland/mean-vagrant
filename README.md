mean-vagrant
============

Vagrant configuration to use a MEAN stack development environment

You need download:
- [Virtual Box](https://www.virtualbox.org/wiki/Downloads)
- [Vagrant](http://www.vagrantup.com/downloads.html)
- [ChefDK](http://getchef.com/downloads/chef-dk)
- [Vagrant Berkshelf](https://github.com/berkshelf/vagrant-berkshelf)

Vagrantfile is a main Vagrant configuration. Typically it is supposed to be placed at the root of your project. Just put it whenever you want your box root should be.

To finalize the setup and run your box you should:
- put both of files to the root of your project (it will be the root of a virtual box)
- run `berks install` to grab required cookbooks
- run `vagrant up` to download, provision and start your brand new box environment.

#Installed Software
 - Git
 - Node (Express, Bower, Grunt, Nodemon, Forever, Stylus)
 - MongoDB
