#!/bin/bash

CUR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CHEF_PATH="$CUR_PATH/../chef"
CHEF_APP_PATH="$CHEF_PATH/app"
CHEF_VENDOR_PATH="$CHEF_PATH/vendor"

echo "Fetching cookbooks..."
berks vendor $CHEF_VENDOR_PATH -b $CHEF_APP_PATH/Berksfile

echo "Installing cookbooks..."
sudo chef-solo -c $CHEF_APP_PATH/solo.rb -j $CHEF_APP_PATH/solo.json