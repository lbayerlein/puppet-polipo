# Parameter for proxy server

class polipoproxy::params {
  $pkgname        = 'polipo'
  $service        = 'polipo'
  $proxypac       = '/usr/share/polipo/www/proxy.pac'
  $conffile       = '/etc/polipo/config'
  $log            = '/var/log/polipo/polipo.log'
  $logsyslog      = true
  $proxyaddress   = '0.0.0.0'
  $proxyport      = '3128'
  $proxyname      = 'proxy'
  $allowedclients = '127.0.0.1/8, 192.168.1.0/16'
  $allowedports   = '80, 443'
  $diskcacheroot  = '/var/cache/polipo'
}
