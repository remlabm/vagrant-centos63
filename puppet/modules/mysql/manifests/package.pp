class mysql::package {
    package {
        ["mysql",
         "mysql-server",
         "mysql-devel"] :
            ensure => latest,
    }
}
