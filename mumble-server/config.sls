{% from "mumble-server/map.jinja" import mumbleserver with context %}

include:
  - mumble-server

mumbleserver_config:
  file.managed:
    - name: {{ mumbleserver.mumbleserver_config }}
    - source: {{ mumbleserver.mumbleserver_config }}
    - template: jinja
    - user: root
    - mode: 644
    - watch_in:
      - service: {{ mumbleserver.service }}