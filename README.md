puppet-bash_history
===============
Puppet module for installing and configuring an extended Bash history

[![Build Status](https://img.shields.io/travis/itmanagerro/puppet-bash_history.svg?style=plastic)](https://travis-ci.org/itmanagerro/puppet-bash_history)
[![Score Status](https://img.shields.io/puppetforge/f/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/bash_history/scores)
[![Downloads Status](https://img.shields.io/puppetforge/dt/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/bash_history)
[![Version Status](https://img.shields.io/puppetforge/v/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/bash_history/changelog)
[![Endorsement Status](https://img.shields.io/puppetforge/e/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/puppet-bash_history)

[![Modules Count](https://img.shields.io/puppetforge/mc/itmanagerro.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro)
[![Release Count](https://img.shields.io/puppetforge/rc/itmanagerro.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro)

## Features
- Realtime history append
- Directories history
- Adding extra attributes

## Supported OS
I have tested the module on all these machines:

- CentOS:
  - 6.7 (Final)
- Debian:
  - 6.0.10 (Squeeze)
  - 7.8 (Wheezy)
  - 8.2 (Jessie)

It should work on any Redhat or Debian based operating systems.

If you need any other operating systems tested, please [let me know](https://github.com/itmanagerro/puppet-bash_history/issues/new).

I will use your requests for creating rspec for specific operating system.

## Configuration
This module should require nothing more than [minimal configuration](#minimal-configuration).

If you need aditional features or if you have any issues, please [contact me](https://github.com/itmanagerro/puppet-bash_history/issues/new).
### Minimal configuration
```
include bash_history
```

### A more complex configuration
```
{
  'bash_history':
    hh_clientip => true,
    hh_terminal => true,
    hh_username => true,
}
```
### Full List of optional configuration parameters:

**hh_clientip** = Appending $SSH_CLIENT to bash history (hh)
Example: [2016-01-01 01:01:01] **[10.10.10.110 56049 22]** ~~~ /usr/src/puppet-bash_history ~~~ git commit -m "Message for commit"

**hh_terminal** = Appending $TERMINAL to bash history (hh)
Example: [2016-01-01 01:01:01] **[/dev/pts/0]** ~~~ /usr/src/puppet-bash_history ~~~ git commit -m "Message for commit"

**hh_username** = Appending $REALUSER to bash history (hh)
Example: [2016-01-01 01:01:01] **[Mihai]** ~~~ /usr/src/puppet-bash_history ~~~ git commit -m "Message for commit"

Copyright 2016 [Mihai Cornateanu @ ITManager](http://www.itmanager.ro)
