class rvm::install {
    exec { "rvm-install" :
        command  => "sudo -u vagrant sh -c 'curl -L https://get.rvm.io | bash -s stable'",
        provider => shell,
        creates  => "/home/vagrant/.rvm/bin/rvm",
    }
}
