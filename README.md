Role Name
=========

**godleon.apt_mirror**

Requirements
------------

## Software

- Python 3.0 or newer version

Role Variables
--------------

The variables that should be passed to this role and a brief description about them are as follows:

```yaml
apt_mirror:
  # where you are going to keep APT packages & metadata
  dir: "/var/local-repo"
  ubuntu:
    enabled: true
    # APT package source
    source: "http://archive.ubuntu.com/ubuntu"
    nthreads: 2
    # Versions are needed to be synchronized to the local APT mirror
    support_versions:
      - name: trusty
        # set to "true" if you need source code packages
        mirror_source: false
      - name: xenial
        mirror_source: false
  debian:
    enabled: false
```

Dependencies
------------

None

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

```yml
- hosts: servers
  roles:
  - { role: godleon.apt_mirror }
```

License
-------

MIT

Author Information
------------------

**Leon Tseng** 

-  [godleon@GitHub](https://github.com/godleon)