class ruby::install {
    exec { "ruby-install" :
        command  => "sudo -u vagrant bash -l -c 'rvm install 1.9.3'",
        provider => shell,
        creates  => "/home/vagrant/.rvm/bin/ruby",
        timeout  => 0,
    }
}
