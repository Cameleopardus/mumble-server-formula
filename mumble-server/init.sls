{% from "mumbleserver/map.jinja" import mumbleserver with context %}

mumbleserver:
  {% if mumbleserver.server is defined %}
  pkg.installed:
    - name: {{ mumbleserver.server }}
  {% endif %}
  service.running:
    - enable: True
    - name: {{ mumbleserver.service }}
  {% if mumbleserver.server is defined %}
    - require:
      - pkg: {{ mumbleserver.server }}
  {% endif %}
