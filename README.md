#puppet-bash_history
===============
Puppet module for installing and configuring an extended Bash history

####Table of Contents

1. [Features](#features)
2. [Supported OS](#supported-os)
3. [Configuration](#configuration)
    * [Minimal configuration](#minimal-configuration)
    * [Complex configuration](#a-more-complex-configuration)
    * [Example](#example-complex)
4. [Parameters](#parameters)
    * [Example](#example-parameters)
5. [Commands](#commands)

##Features

[![Build Status](https://img.shields.io/travis/itmanagerro/puppet-bash_history.svg?style=plastic)](https://travis-ci.org/itmanagerro/puppet-bash_history)
[![Score Status](https://img.shields.io/puppetforge/f/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/bash_history/scores)
[![Downloads Status](https://img.shields.io/puppetforge/dt/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/bash_history)
[![Version Status](https://img.shields.io/puppetforge/v/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/bash_history/changelog)
[![Endorsement Status](https://img.shields.io/puppetforge/e/itmanagerro/bash_history.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro/puppet-bash_history)

[![Modules Count](https://img.shields.io/puppetforge/mc/itmanagerro.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro)
[![Release Count](https://img.shields.io/puppetforge/rc/itmanagerro.svg?style=plastic)](https://forge.puppetlabs.com/itmanagerro)

* Append and preserve Bash history in realtime
* Directory Stack Builtins - directories history
* Adding extra attributes
  * Client IP ($SSH_CLIENT)
  * Terminal (/dev/pty/01)
  * Username (SSH variable passed by SSH Keys)

##Supported OS
I have tested the module on all these machines:

* CentOS: 6.7 (Final)
* Debian: 6.0.10 (Squeeze), 7.8 (Wheezy), 8.2 (Jessie)

It should work on any Redhat or Debian based operating systems.

If you need any other operating systems tested, please [let me know](https://github.com/itmanagerro/puppet-bash_history/issues/new).

I will use your requests for creating rspec for specific operating system.

##Configuration
This module should require nothing more than [minimal configuration](#minimal-configuration).

If you need aditional features or if you have any issues, please [contact me](https://github.com/itmanagerro/puppet-bash_history/issues/new).
####Minimal configuration
~~~puppet
include bash_history
~~~

####A more complex configuration
~~~puppet
class { 'bash_history':
  hh_clientip => true,
  hh_terminal => true,
  hh_username => true,
}
~~~

####Example (complex)
~~~puppet
[2016-01-01 01:01:01] [/dev/pts/0] [192.168.0.1 65535 22] [Mihai] ~~~ /usr/src/puppet-bash_history ~~~ ps aux
[2016-01-01 01:01:03] [/dev/pts/1] [192.168.0.4 56578 22] [Angela] ~~~ /root ~~~ Logged in as user root     pts/1        2016-01-01 01:01 (angela-pc.localdomain)
[2016-01-01 01:02:21] [/dev/pts/2] [192.168.0.8 35535 22] [George] ~~~ /root ~~~ cd /var/www
[2016-01-01 01:03:31] [/dev/pts/2] [192.168.0.8 64535 22] [George] ~~~ /var/www ~~~ rm -fr index.html
[2016-01-01 01:04:41] [/dev/pts/3] [192.168.0.6 56435 22] [Robert] ~~~ /opt ~~~ mkdir solr-testing
[2016-01-01 01:05:51] [/dev/pts/6] [192.168.0.3 45645 22] [Gina] ~~~ /tmp ~~~ cd /var/log
[2016-01-01 01:05:57] [/dev/pts/1] [192.168.0.4 56578 22] [Angela] ~~~ /root ~~~ Logged out from user root     pts/1        2016-01-01 01:01 (angela-pc.localdomain)
[2016-01-01 01:06:01] [/dev/pts/6] [192.168.0.3 34564 22] [Gina] ~~~ /var/log ~~~ tail -f mail.info
~~~

##Parameters

| Parameter | Description |
|:------------:|:---------------:|
| **hh_clientip** | Include $SSH_CLIENT to bash history (hh) |
| **hh_terminal** | Include $(tty) to bash history (hh) |
| **hh_username** | Include $REALUSER to bash history (hh) |

*hh_username require sshd_config "PermitUserEnvironment yes" and authorized_keys should include*

~~~puppet
environment="REALUSER=Mihai" ssh-rsa AAAAB2NzA3zaGFD4tdg4tSss[...]AD4fSArShnio3xB3cb2jeOsYQ== Mihai Cornateanu SSH KEY
~~~

####Example (parameters)

**hh_clientip**
~~~puppet
[2016-01-01 01:01:01] [192.168.0.1 65535 22] ~~~ /usr/src/puppet-bash_history ~~~ ps aux
~~~

**hh_terminal**
~~~puppet
[2016-01-01 01:01:01] [/dev/pts/0] ~~~ /usr/src/puppet-bash_history ~~~ ps aux
~~~

**hh_username**
~~~puppet
[2016-01-01 01:01:01] [Mihai] ~~~ /usr/src/puppet-bash_history ~~~ ps aux
~~~

##Commands

| Command | Description |
|:------------:|:---------------:|
| **hh** | show full extended history |
| **hh 10** | show last 10 lines of extented history |
| **hd** | show full directories stack |
| **hd 10** | show last 10 lines of directories stack |

Copyright 2016 [Mihai Cornateanu @ ITManager](http://www.itmanager.ro)
