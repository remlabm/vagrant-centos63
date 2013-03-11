class mongodb::service {
    service { "mongod" :
        ensure => stopped,
        enable => false,
    }
}
