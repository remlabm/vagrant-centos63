class rubygems {
    require ruby

    file { "/home/vagrant/.gemrc" :
        ensure  => present,
        mode    => "0644",
        owner   => "vagrant",
        group   => "vagrant",
        replace => true,
        source  => "puppet:///modules/rubygems/gemrc"
    } ->

    exec { "install-bundler" :
        command  => "sudo -u vagrant bash -l -c 'gem install bundler'",
        provider => shell,
        creates  => "/home/vagrant/.rvm/bin/bundle",
    }
}
