Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.hostname = "vagrant-chef"
  config.vm.network :private_network, ip: "192.168.10.100"
  config.vm.synced_folder ".", "/vagrant", type: "nfs"
  
  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "512"]
  end

  ### Method 1 (vagrant inline shell scripts)
  config.vm.provision :shell, :inline => "bash /vagrant/scripts/box-provision.sh"
  config.vm.provision :shell, :inline => "bash /vagrant/scripts/chef-provision.sh"
  
  ### Method 2 (vagrant chef solo provisioner)
  # config.vm.provision :shell, :inline => "bash /vagrant/scripts/box-provision.sh"
  # config.vm.provision :chef_solo do |chef|
  #   chef.cookbooks_path = "chef"
  #   chef.add_recipe "app"
  #
  #   chef.cookbooks_path = "chef/vendor"
  #   chef.run_list = [ "recipe[app::default]" ]
  # end

  ### Method 3 (os level shell scripts)
  # $ bash scripts/box-provision.sh
  # $ bash scripts/chef-provision.sh
end
