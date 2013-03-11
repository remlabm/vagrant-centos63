class postgresql::privileges {
    exec { "start-postgresql" :
        command => "/sbin/service postgresql-9.1 start",
        unless  => "/sbin/service postgresql-9.1 status",
    } ->

    exec { "postgresql-privileges" :
        command => "/bin/su postgres -c \"
            /usr/bin/psql -c \\\"ALTER USER postgres WITH ENCRYPTED PASSWORD 'postgres';\\\"
        \"",
        unless => "/bin/sleep 3 && /usr/bin/env PGPASSWORD=postgres /usr/bin/psql -U postgres -w -l",
    }
}
