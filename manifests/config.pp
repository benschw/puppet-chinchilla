# == Class module::config
#
# This class is called from module for service config.
#
class chinchilla::config {
  file { '/etc/init.d/chinchilla':
    mode    => '0555',
    owner   => 'root',
    group   => 'root',
    content => template('chinchilla/init.erb'),
  }

  file { $::chinchilla::config_dir:
    ensure => 'directory',
    mode   => '0755',
    owner  => 'root',
    group  => 'root',
  } ->
  file { "$::chinchilla::config_dir/private-keyring.gpg":
    mode    => '0555',
    owner   => 'root',
    group   => 'root',
    content => "$::chinchilla::private_keyring",
  }
}
