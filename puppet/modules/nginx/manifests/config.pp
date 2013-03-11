class nginx::config {
    File {
        owner => root,
        group => root,
        mode  => 0644,
    }

    file {
        ["/etc/nginx",
         "/etc/nginx/conf.d",
         "/var/log/nginx"] :
            ensure => directory,
    } ->

    file {
        ["/var/log/nginx/error.log",
         "/var/log/nginx/access.log"] :
            ensure => present,
            owner  => nginx,
    } ->

    file {
        ["/etc/nginx/conf.d/default.conf",
         "/etc/nginx/conf.d/example_ssl.conf"] :
             ensure => absent,
    } ->

    file { "/etc/nginx/nginx.conf" :
        ensure => present,
        replace => true,
        source  => "puppet:///modules/nginx/nginx.conf",
    } ->

    file { "/etc/nginx/conf.d/proxy.conf" :
        ensure => present,
        replace => true,
        source  => "puppet:///modules/nginx/proxy.conf",
    }
}
