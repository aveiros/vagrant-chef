# Vagrant Chef

### Description
Ubuntu box provisioned using Chef and Berkshelf.

### Dependencies (using Vagrant)
* VirtualBox
* Vagrant

### Box Setup
* Ubuntu OS
* RVM & Ruby
* Git
* Chef
* Berkshelf

### Application Setup
* Node
* MySQL
* Redis

### Structure
```
.
├── chef/                           # chef content folder
|   ├── cache/                      # chef cache folder
|   ├── cookbooks/                  # chef cookbooks folder
|   |   ├── app/                    # chef app cookbooks folder (for application specific)
|   |   ├── vendor/                 # chef vendor cookbooks folder (for third party)
|   |   └── Berksfile               # berksfile (cookbooks install dependencies)
|		├── scripts/                    # chef provision scripts folder
|   |		├── box-provision.sh        # installs box tools such as: git, chef, berkshelf, etc.
|   |		└── chef-provision.sh       # installs chef cookbooks
|   ├── solo.json                   # chef solo data file
|   └── solo.rb                     # chef solo configuration file
└── Vagrantfile                     # Vagrant configuration file
```

### Usage
The setup can be applied on a Vagrant box or a Ubuntu machine. For more information check the `Vagrantfile`.

```bash
vagrant up
```

### License
MIT