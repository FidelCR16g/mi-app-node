Vagrant.configure("2") do |config|
config.vm.box = "ubuntu/focal64"
config.vm.box_version = "20240821.0.1"
config.vm.hostname = "revproxy"
config.vm.network "private_network", ip: "192.168.33.14"
config.vm.network "public_network"
config.vm.synced_folder "D:/Despliegue/express-pokemonsApi", "/home/vagrant/src"
config.vm.provider "virtualbox" do |vb|
vb.memory = "512"
vb.name = "revproxy"
end
config.vm.provision "shell", path: "script-provision.sh", privileged: false
end

