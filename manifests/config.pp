# Class bash_history::config
class bash_history::config inherits bash_history
(
  $ssh_username = $::bash_history::ssh_username,
  $ssh_clientip = $::bash_history::ssh_clientip,
)
{
  file
  {
    '/etc/pbh':
      ensure => directory,
      owner  => root,
      group  => root;

    '/etc/bash.bash_logout':
      ensure  => present,
      mode    => '0640',
      owner   => root,
      group   => root,
      content => template('bash_history/etc/bash.bash_logout.erb');

    '/etc/pbh/cd_func.sh':
      ensure  => present,
      mode    => '0640',
      owner   => root,
      group   => root,
      content => template('bash_history/etc/pbh/cd_func.sh.erb');

    '/etc/pbh/loghistory_func.sh':
      ensure  => present,
      mode    => '0640',
      owner   => root,
      group   => root,
      content => template('bash_history/etc/pbh/loghistory_func.sh.erb');

    '/etc/pbh/puppet.bash_history':
      ensure  => present,
      mode    => '0640',
      owner   => root,
      group   => root,
      content => template('bash_history/etc/pbh/puppet.bash_history.erb');
  }
}
