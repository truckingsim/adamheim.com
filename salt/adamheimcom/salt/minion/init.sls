salt-minion:
  pkgrepo:
    - managed
    - humanname: SaltStack Repo
    - name: deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest {{ grains['lsb_distrib_codename'] }} main
    - dist: {{ grains['lsb_distrib_codename'] }}
    - key_url: https://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest/SALTSTACK-GPG-KEY.pub
  pkg:
    - latest
  service:
    - dead
    - enable: False

/etc/salt/minion.d/masterless.conf:
  file.managed:
    - source: salt://salt/config/etc/salt/minion.d/masterless.conf

