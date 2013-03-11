## A Vagrant box ready for Ruby development

This is a Vagrant box that I built for my Ruby projects. It comes with CentOS 6.3 i386, Nginx, RVM, MySQL, PostgreSQL and MongoDB. All databases are disabled by default, so you need to enable them before use.

Feel free to fork this repo and help me make it better.

### Requirements

 * [VirtualBox](https://www.virtualbox.org/)
 * [Vagrant](http://www.vagrantup.com/)

### Installed packages

 * MySQL 5.1.67
 * Nginx 1.2.7
 * RVM 1.18.18
 * Ruby 1.9.3p392
 * Rubygems 1.8.25
 * Bundler 1.3.2

### How to use

Add the following to your `Vagrantfile`:

    config.vm.box = "centos63-ruby"
    config.vm.box_url = "http://andromeda.lenonmarcel.com.br/centos63-ruby.box"

And run:

    vagrant up

This will download and import the box for you.

### How to enable a database

You can use `service` to start/stop a service on CentOS:

    sudo service mysqld start
    sudo service mysqld stop

    sudo service postgresql-9.1 start
    sudo service postgresql-9.1 stop

    sudo service mongod start
    sudo service mongod stop

You can also use `chkconfig` to enable/disable a service on system startup:

    sudo chkconfig mysqld on
    sudo chkconfig mysqld off

    sudo chkconfig postgresql-9.1 on
    sudo chkconfig postgresql-9.1 off

    sudo chkconfig mongod on
    sudo chkconfig mongod off
