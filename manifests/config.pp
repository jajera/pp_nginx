# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include nginx::config
class nginx::config {
  file { '/var/www/html/index.html':
    ensure  => file,
    content => 'Hello, World!',
    require => Class['nginx::service'],
  }
}
