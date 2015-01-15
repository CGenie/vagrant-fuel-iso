packages:
  pkg.latest:
    - pkgs:
      - build-essential
      - createrepo
      - curl
      - debootstrap
      - extlinux
      - genisoimage
      - git
      - htop
      - imagemagick
      - isomd5sum
      - kpartx
      - libmysqlclient-dev
      - libvirt-bin
      - lrzip
      - make
      - multistrap
      - nodejs
      - python-daemon
      - python-dev
      - python-ipaddr
      - python-paramiko
      - python-pip
      - python-nose
      - python-setuptools
      - python-software-properties
      - python-yaml
      - rsync
      - ruby
      - ruby-dev
      - screen
      - software-properties-common
      - tmux
      - unzip
      - vim
      - vim-nox
      - python-virtualenv
      - virtualenvwrapper
      - yum
      - yum-utils

multistrap-forceyes-removal:
  # Remove $forceyes variable from /usr/sbin/multistrap
  # See https://bugs.launchpad.net/ubuntu/+source/multistrap/+bug/1313787
  # for more details
  file.replace:
    - name: /usr/sbin/multistrap
    - pattern: \$forceyes
    - repl: 
    - require:
      - pkg: packages
