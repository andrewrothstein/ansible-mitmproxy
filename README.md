andrewrothstein.mitmproxy
=========
![Build Status](https://github.com/andrewrothstein/ansible-mitmproxy/actions/workflows/build.yml/badge.svg)

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
