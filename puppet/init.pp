node default {
    class { "nginx" : }
    class { "rvm" : }
    class { "ruby" : }
    class { "mysql" : }
    class { "postgresql" : }
    class { "mongodb" : }
}
