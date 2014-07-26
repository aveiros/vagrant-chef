# folders
chef_path = File.dirname(File.absolute_path(__FILE__))
cache_path = chef_path + "/cache"
cookbooks_app_path = chef_path + "/cookbooks/app"
cookbooks_vendor_path = chef_path + "/cookbooks/vendor"

log_level :info
file_cache_path cache_path
cookbook_path [cookbooks_vendor_path, cookbooks_app_path]