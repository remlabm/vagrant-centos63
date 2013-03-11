class mysql {
    class { "mysql::package" : } ->
    class { "mysql::config" : } ->
    class { "mysql::privileges" : } ->
    class { "mysql::service" : }
}
