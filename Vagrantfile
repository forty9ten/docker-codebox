$script = <<SCRIPT
cd /vagrant
docker build -t codebox .
SCRIPT

Vagrant.configure("2") do |config|

  config.vm.hostname = "codebox-docker-0-7-2"

  config.vm.box = "codebox-docker-0-7-2"
  config.vm.box_url = "https://dl.dropboxusercontent.com/s/oqz573nhj341l6o/docker-0.7.2-base.box"
  config.vm.network :private_network, ip: "192.168.33.10"
  config.vm.provision "shell", inline: $script
end
