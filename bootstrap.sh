#!/bin/bash
cd /home/vagrant/Code/mean
# git checkout develop

# Install Mean.JS Prerequisites
npm install -g grunt-cli
npm install -g bower

# Install Mean.JS Packages
npm install --no-bin-links

# Run Mean.JS
NODE_ENV=development nohup node server.js > /dev/null &

# Run in production mode
# NODE_ENV=secure nohup node server.js > /tmp/mean-output.log &

# Run in production mode v0.4.0
# sudo grunt prod
