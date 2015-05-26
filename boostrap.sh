#!/bin/bash
/home/vagrant/Code
cd ringit-web
# git checkout develop

# Install Mean.JS Prerequisites
npm install -g grunt-cli
npm install -g bower

# Install Mean.JS Packages
npm install

# Run Mean.JS
grunt
