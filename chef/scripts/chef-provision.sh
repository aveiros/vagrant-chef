#!/bin/sh

[[ -s "${HOME}/.rvm/scripts/rvm" ]] && source "${HOME}/.rvm/scripts/rvm"
[[ -s "/etc/profile.d/rvm.sh" ]] && source "/etc/profile.d/rvm.sh"

CUR_PATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"; CHEF_PATH="${CUR_PATH}/../chef"
COOKBOOKS_PATH="${CHEF_PATH}/cookbooks"
COOKBOOKS_APP_PATH="${COOKBOOKS_PATH}/app"
COOKBOOKS_VENDOR_PATH="${COOKBOOKS_PATH}/vendor"

export rvmsudo_secure_path=1

echo "Fetching vendor cookbooks..."
berks vendor ${COOKBOOKS_VENDOR_PATH} -b ${COOKBOOKS_PATH}/Berksfile

echo "Installing cookbooks..."
rvmsudo chef-solo -c ${CHEF_PATH}/solo.rb -j ${CHEF_PATH}/solo.json
