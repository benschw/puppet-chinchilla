# Class: chinchilla
# ===========================
#
# Full description of class module here.
#
# Parameters
# ----------
#
# * `sample parameter`
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
class chinchilla (
  $package_name = $::chinchilla::params::package_name,
  $service_name = $::chinchilla::params::service_name,

  $private_keyring = '',
  $config_dir = '/etc/chinchilla',
) inherits ::chinchilla::params {

  # validate parameters here

  #class { '::chinchilla::install': } ->
  class { '::chinchilla::config': } ~>
  #class { '::chinchilla::service': } ->
  Class['::chinchilla']
}
