# == Class chinchilla::params
#
# This class is meant to be called from module.
# It sets variables according to platform.
#
class chinchilla::params {
  case $::osfamily {
    'Debian': {
      $package_name = 'module'
      $service_name = 'module'

    }
    default: {
      fail("${::operatingsystem} not supported")
    }
  }
}
