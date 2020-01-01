andrewrothstein.mitmproxy
=========
[![Build Status](https://travis-ci.org/andrewrothstein/ansible-mitmproxy.svg?branch=master)](https://travis-ci.org/andrewrothstein/ansible-mitmproxy)

Installs [mitmproxy](https://mitmproxy.org/).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.mitmproxy
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
