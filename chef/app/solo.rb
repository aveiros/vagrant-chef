chef_path = File.dirname(File.dirname(File.absolute_path(__FILE__)))
cache_path = chef_path + "/cache"
vendor_path = chef_path + "/vendor"

file_cache_path cache_path
cookbook_path vendor_path