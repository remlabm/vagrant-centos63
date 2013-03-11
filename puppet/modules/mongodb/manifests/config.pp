class mongodb::config {
    file { "/etc/mongodb.conf" :
        ensure  => present,
        mode    => 0644,
        owner   => root,
        group   => root,
        replace => true,
        source  => "puppet:///modules/mongodb/mongodb.conf",
    }
}
