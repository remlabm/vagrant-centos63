Vagrant::Config.run do |config|
  config.vm.box     = "centos63"
  config.vm.box_url = "http://andromeda.lenonmarcel.com.br/centos63.box"

  config.vm.provision :puppet do |pp|
    pp.manifests_path = "puppet"
    pp.manifest_file  = "init.pp"
    pp.module_path    = "puppet/modules"
  end

  config.vm.provision(:shell, :path => "postinstall.sh") if ENV["POSTINSTALL"]
end
