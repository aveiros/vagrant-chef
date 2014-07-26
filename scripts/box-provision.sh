#!/bin/bash

###
###	Handy tools Install
###
echo "Installing handy tools"

# update apt-get repos
sudo apt-get update -y

# install build essentials
sudo apt-get install build-essential -y

# install curl
sudo apt-get install curl -y

# install aria2
sudo apt-get install aria2 -y

# install git
sudo apt-get install git-core -y

###
###	Chef Development Kit Install
###
echo "Installing chef development kit tools"

# download chef development kit package (includes chef-client/chef-solo/berkshelf/etc)
# note: there are other ways to do this.
aria2c -x 5 https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.1.0-1_amd64.deb

# install package
sudo dpkg -i chefdk_0.1.0-1_amd64.deb

# remove package file
rm chefdk_0.1.0-1_amd64.deb