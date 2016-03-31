# Install and configure an proxy server

class polipoproxy::install {

  package { $polipoproxy::params::pkgname:
    ensure => present
  }

}
