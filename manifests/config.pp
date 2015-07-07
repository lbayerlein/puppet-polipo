# Install and configure an proxy server

class polipoproxy::config inherits polipoproxy {

#service settings for polipo
  service { $polipoproxy::params::service:
    ensure => running,
    enable => true,
  }

#service configuration for polipo
  file { $polipoproxy::params::conffile:
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0640',
    content => template('polipoproxy/config.erb')
  }

#wpad file for clients
  file { $polipoproxy::params::proxypac:
    ensure => 'file',
    mode   => '0600',
    owner  => 'root',
    group  => 'root',
    source => 'puppet:///modules/polipoproxy/proxy.pac',
  }

}
