VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.ssh.forward_agent = true

    config.vm.define "controlhost" do |controlhost|
        controlhost.vm.box = "ubuntu/trusty64"
        controlhost.vm.network "private_network", ip: "10.10.10.1"
        controlhost.vm.host_name = "controlhost"
        controlhost.vm.provision :shell, :path => "ansible/provision.sh"
        controlhost.vm.synced_folder "provisioning/", "/vagrant"
        config.vm.provider :virtualbox do |v|
                v.customize ["modifyvm", :id, "--memory", 1024]
        end
    end

    config.vm.define "development" do |development|
        development.vm.box = "ubuntu/trusty64"
        development.vm.network "private_network", ip: "10.10.10.2"
        development.vm.host_name = "development"
        development.vm.synced_folder "src/", "/var/www"
        development.vm.provider :virtualbox do |v|
            v.customize ["modifyvm", :id, "--memory", 1024]
        end
    end

    config.vm.define "stage" do |stage|
        stage.vm.box = "ubuntu/trusty64"
        stage.vm.network "private_network", ip: "10.10.10.3"
        stage.vm.host_name = "stage"
        stage.vm.provider :virtualbox do |v|
            v.customize ["modifyvm", :id, "--memory", 1024]
        end
    end

end
