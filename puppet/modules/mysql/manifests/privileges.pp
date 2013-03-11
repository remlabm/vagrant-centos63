class mysql::privileges {
    exec { "start-mysqld" :
        command => "/sbin/service mysqld start",
        unless  => "/sbin/service mysqld status",
    } ->

    exec { "mysql-privileges" :
        command => "/usr/bin/mysql -uroot -e \"
            GRANT ALL ON *.* TO 'root'@'localhost' IDENTIFIED BY 'root' WITH GRANT OPTION;
            GRANT ALL ON *.* TO 'root'@'%'         IDENTIFIED BY 'root' WITH GRANT OPTION;
            FLUSH PRIVILEGES;
        \"",
        unless => "/bin/sleep 3 && /usr/bin/mysqladmin -uroot -proot status",
    }
}
