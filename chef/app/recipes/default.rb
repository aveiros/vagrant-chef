#
# Cookbook Name:: app
# Recipe:: default
#

include_recipe "mysql::server"
include_recipe "mysql::client"

include_recipe "redisio::install"
include_recipe "redisio::enable"

include_recipe "nodejs"