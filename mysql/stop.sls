{% from "mysql/map.jinja" import mysql with context %}
stop_mysql:
  service.dead:
    - name: {{ mysql.service }}
