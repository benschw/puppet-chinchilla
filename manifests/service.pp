# == Class chinchilla::service
#
# This class is meant to be called from module.
# It ensure the service is running.
#
class chinchilla::service {

  service { $::chinchilla::service_name:
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
