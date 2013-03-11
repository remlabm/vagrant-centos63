class postgresql::service {
    service { "postgresql-9.1" :
        ensure => stopped,
        enable => false,
    }
}
