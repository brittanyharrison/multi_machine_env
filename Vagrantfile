
Vagrant.configure("2") do |config|

  config.vm.define "db" do |db|

    db.vm.box = "ubuntu/xenial64"
    db.vm.network "private_network", ip: "192.168.10.150"
    db.vm.synced_folder ".", "/home/vagrant/environment"
    db.vm.provision "shell", path:"environment/dbprovision.sh"
  end
  

  config.vm.define "app" do |app|

    # This configures what box the machine will be brought up against
    app.vm.box = "ubuntu/xenial64"
    # Configures networks on the machine to specify a static IP address for the machine
    app.vm.network "private_network", ip: "192.168.10.100"
    #  Configures synced folders on the machine, so that folders on your host machine can be synced to and from the guest machine. 
    app.vm.synced_folder ".", "/home/vagrant/environment"
    # Vagrant will upload the provision script and execute it
    app.vm.provision "shell", path:"environment/provision.sh"
  end   
  
  

end
