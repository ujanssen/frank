consul:
  user:
    - present
    - fullname: consul

  file:
    - managed
    - name: /usr/local/bin/consul
    - source: salt://consul/consul
    - mode: 0744

/etc/consul.d:
  file:
    - directory

