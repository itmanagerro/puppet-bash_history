# Class bash_history
class bash_history
(
  $ssh_username = $::bash_history::params::ssh_username,
  $ssh_clientip = $::bash_history::params::ssh_clientip,
)
{
  include bash_history::config
  include bash_history::service
}
