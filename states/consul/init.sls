consul:
  user:
    - present
    - fullname: consul

  file:
    - managed
    - name: /usr/local/bin/consul
    - source: salt://consul/consul
    - mode: 0744

/etc/consul.d/client:
  file:
    - directory

/etc/consul.d/client/config.json:
  file:
    - managed
    - source: salt://consul/config.json

/etc/init/consul.conf:
  file:
    - managed
    - source: salt://consul/consul.conf

/var/log/consul:
  file:
    - directory
    - user: consul
    - group: consul

