/srv/salt/base:
  file.directory:
    - user: root
    - group: root
    - mode: 700
    - makedirs: True
