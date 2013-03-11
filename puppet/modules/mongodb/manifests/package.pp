class mongodb::package {
    yumrepo { "mongodb-repo" :
        name     => "10gen",
        baseurl  => "http://downloads-distro.mongodb.org/repo/redhat/os/i686",
        gpgcheck => 0,
        enabled  => 1,
    } ->

    package {
        ["mongo-10gen",
         "mongo-10gen-server"] :
            ensure => latest,
    }
}
