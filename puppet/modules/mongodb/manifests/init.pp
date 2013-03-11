class mongodb {
    class { "mongodb::package" : } ->
    class { "mongodb::config" : } ->
    class { "mongodb::service" : }
}
