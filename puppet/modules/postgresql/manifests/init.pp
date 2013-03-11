class postgresql {
    class { "postgresql::package" : } ->
    class { "postgresql::config" : } ->
    class { "postgresql::privileges" : } ->
    class { "postgresql::service" : }
}
