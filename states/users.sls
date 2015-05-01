# loop over all users presented by pillar:
{% for username, details in pillar.get('users', {}).items() %}
{{ username }}:
  user:
    - present
    - fullname: {{ details.get('fullname', '') }}
{% endfor %}

