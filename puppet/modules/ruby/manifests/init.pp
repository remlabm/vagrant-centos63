class ruby {
    require rvm

    class { "ruby::dependencies" : } ->
    class { "ruby::install" : }
}
