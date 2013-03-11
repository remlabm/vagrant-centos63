class postgresql::package {
    package { "postgresql-repo" :
        provider => "rpm",
        name     => "pgdg-redhat91",
        ensure   => installed,
        source   => "http://yum.postgresql.org/9.1/redhat/rhel-6-x86_64/pgdg-redhat91-9.1-5.noarch.rpm",
    } ->

    package {
        ["postgresql91",
         "postgresql91-server"] :
            ensure => latest,
    }
}
