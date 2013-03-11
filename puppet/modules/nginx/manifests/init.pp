class nginx {
    class { "nginx::package" : } ->
    class { "nginx::config" : } ->
    class { "nginx::service" : }
}
