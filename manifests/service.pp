# Class bash_history::service
class bash_history::service inherits bash_history
{
  exec
  {
    'Install Puppet Bash History':
      command => 'echo "source /etc/pbh/puppet.bash_history" >> /etc/bashrc',
      unless  => 'grep -q "puppet.bash_history" /etc/bashrc',
      cwd     => '/etc',
      path    => ['/bin', '/usr/bin', '/usr/sbin'],
  }
}
