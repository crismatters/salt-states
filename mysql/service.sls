{% from "mysql/map.jinja" import mysql with context %}
verify_mysql:
  service.running:
    - name: {{ mysql.service }}
    - enable: False
    - reload: True
