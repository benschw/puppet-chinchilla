# == Class module::install
#
# This class is called from module for install.
#
class chinchilla::install {

  package { $::chinchilla::package_name:
    ensure => present,
  }
}
