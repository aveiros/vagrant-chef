#!/bin/sh

echo "Installing tools..."

# update apt-get repos
sudo apt-get update -y

# install build essentials
sudo apt-get install build-essential -y

# install curl
sudo apt-get install curl -y

# install git
sudo apt-get install git-core -y

# install berkshelf, chef
## install libgecode-dev (berkshelf dependency)
sudo apt-get install libgecode-dev -y

# install rvm
\curl -sSL https://get.rvm.io | bash -s stable
[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"
[[ -s "/etc/profile.d/rvm.sh" ]] && source "/etc/profile.d/rvm.sh"

# install ruby
rvm install 2.1.2
rvm use ruby-2.1.2 --default

# install berkshelf & chef
export USE_SYSTEM_GECODE=1
rvm @global do gem install berkshelf --version '~> 3.1' --no-ri --no-rdoc
rvm @global do gem install chef --version '~> 11.12' --no-ri --no-rdoc
