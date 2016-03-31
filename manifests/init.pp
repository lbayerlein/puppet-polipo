# == Class: polipoproxy
#
# Full description of class polipoproxy here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'polipoproxy':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class polipoproxy (
  $pkgname        = $polipoproxy::params::pkgname,
  $service        = $polipoproxy::params::service,
  $proxypac       = $polipoproxy::params::proxypac,
  $conffile       = $polipoproxy::params::conffile,
  $log            = $polipoproxy::params::log,
  $logsyslog      = $polipoproxy::params::logsyslog,
  $proxyaddress   = $polipoproxy::params::proxyaddress,
  $proxyport      = $polipoproxy::params::proxyport,
  $proxyname      = $polipoproxy::params::proxyname,
  $allowedclients = $polipoproxy::params::allowedclients,
  $allowedports   = $polipoproxy::params::allowedports,
  $diskcacheroot  = $polipoproxy::params::diskcacheroot,
) inherits polipoproxy::params {

  include polipoproxy::config
  include polipoproxy::install

}
