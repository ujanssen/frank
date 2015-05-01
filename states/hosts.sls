# loop over all hosts presented by pillar:
{% for host, details in pillar.get('hosts', {}).items() %}
{{ host }}:
  host.present:
    - ip: {{ details.get('ip', '') }}

{% endfor %}

