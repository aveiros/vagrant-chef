#!/bin/bash

CUR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
CHEF_PATH="$CUR_PATH/../chef"
COOKBOOKS_PATH="$CHEF_PATH/cookbooks"
COOKBOOKS_APP_PATH="$COOKBOOKS_PATH/app"
COOKBOOKS_VENDOR_PATH="$COOKBOOKS_PATH/vendor"

echo "Fetching vendor cookbooks..."
berks vendor ${COOKBOOKS_VENDOR_PATH} -b ${COOKBOOKS_PATH}/Berksfile

echo "Installing cookbooks..."
sudo chef-solo -c ${CHEF_PATH}/solo.rb -j ${CHEF_PATH}/solo.json