class mysql::config {
    File {
        mode => 0644,
    }

    file { "/var/log/mysql" :
        owner  => mysql,
        group  => mysql,
        ensure => directory,
    } ->

    file { "/etc/my.cnf" :
        ensure  => present,
        owner   => root,
        group   => root,
        replace => true,
        source  => "puppet:///modules/mysql/my.cnf",
    } ->

    file {
        ["/var/log/mysql/general.log",
         "/var/log/mysql/slow.log"] :
            ensure  => present,
            owner   => mysql,
            group   => mysql
    }
}
