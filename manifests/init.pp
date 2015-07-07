# Class: ocsinventory_agent

# $Id: init.pp 3671 2014-11-05 09:15:59Z  $

class polipoproxy (
  $pkgname        = $polipoproxy::params::pkgname,
  $service        = $polipoproxy::params::service,
  $proxypac       = $polipoproxy::params::proxypac,
  $conffile       = $polipoproxy::params::conffile,
  $log            = $polipoproxy::params::log,
  $logsyslog      = $polipoproxy::params::logsyslog,
  $proxyaddress   = $polipoproxy::params::proxyaddress,
  $proxyport      = $polipoproxy::params::proxyport,
  $proxyname      = $polipoproxy::params::proxyport,
  $allowedclients = $polipoproxy::params::allowedclients,
  $allowedports   = $polipoproxy::params::allowedports,
  $diskcacheroot  = $polipoproxy::params::diskcacheroot,
) inherits polipoproxy::params {

  anchor { "${module_name}::begin": } ->
  class { "${module_name}::install": } ->
  class { "${module_name}::config": } ->
  anchor { "${module_name}::end": }

}
