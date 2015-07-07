# Install and configure an proxy server

class polipoproxy::install inherits polipoproxy {

  package { $polipoproxy::params::pkgname:
    ensure => present
  }

}
