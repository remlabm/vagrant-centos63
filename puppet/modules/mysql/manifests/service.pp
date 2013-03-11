class mysql::service {
    service { "mysqld" :
        ensure => stopped,
        enable => false,
    }
}
