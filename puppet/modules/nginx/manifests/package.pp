class nginx::package {
    package { "nginx-repo" :
        provider => "rpm",
        name     => "nginx-release-centos",
        ensure   => installed,
        source   => "http://nginx.org/packages/centos/6/noarch/RPMS/nginx-release-centos-6-0.el6.ngx.noarch.rpm",
    } ->

    package { "nginx" :
        ensure => latest,
    }
}
