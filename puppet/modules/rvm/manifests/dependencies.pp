class rvm::dependencies {
    package {
        ["curl",
         "git",
         "patch"] :
            ensure => latest,
    }
}
