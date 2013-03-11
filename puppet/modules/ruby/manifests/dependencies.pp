class ruby::dependencies {
    package {
        ["gcc-c++",
         "readline",
         "readline-devel",
         "zlib",
         "zlib-devel",
         "libffi-devel",
         "openssl-devel",
         "make",
         "bzip2",
         "autoconf",
         "automake",
         "libtool",
         "bison"] :
            ensure => latest,
    } ->

    exec { "yaml-install" :
        provider => shell,
        command  => "
            cd /tmp &&
            curl -O http://pyyaml.org/download/libyaml/yaml-0.1.4.tar.gz &&
            tar xzf yaml-0.1.4.tar.gz &&
            cd yaml-0.1.4 &&
            ./configure --prefix=/usr/local &&
            make &&
            make install
        ",
    }
}
