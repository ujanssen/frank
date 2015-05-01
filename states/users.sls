# loop over all users presented by pillar:
{% for username, details in pillar.get('users', {}).items() %}
{{ username }}:
  user:
    - present
    - fullname: {{ details.get('fullname', '') }}
    - shell: '/bin/bash'

{% if 'pub_ssh_keys' in details %}
  ssh_auth:
    - present
    - user: {{ username }}
    - names:
    {% for pub_ssh_key in details.get('pub_ssh_keys', []) %}
      - {{ pub_ssh_key }}
    {% endfor %}
    - require:
      - user: {{ username }}
  {% endif %}

{% endfor %}

