# Class bash_history
class bash_history
(
  $hh_clientip = $::bash_history::params::ssh_clientip,
  $hh_terminal = $::bash_history::params::ssh_terminal,
  $hh_username = $::bash_history::params::ssh_username,
)
{
  include bash_history::config
  include bash_history::service
}
