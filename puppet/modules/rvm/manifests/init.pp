class rvm {
    class { "rvm::dependencies" : } ->
    class { "rvm::install" : }
}
