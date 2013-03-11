class postgresql::config {
    exec { "init-postgresql-db" :
        command => "/sbin/service postgresql-9.1 initdb",
        creates => "/var/lib/pgsql/9.1/data/pg_hba.conf",
    } ->

    file { "/var/lib/pgsql/9.1/data/pg_hba.conf" :
        ensure  => present,
        replace => true,
        owner   => postgres,
        group   => postgres,
        mode    => 0644,
        source  => "puppet:///modules/postgresql/pg_hba.conf",
    }
}
