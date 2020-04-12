{% from "mysql/map.jinja" import mysql with context %}
configure_mysql:
  file.managed:
    - name: {{ mysql.configfile }}
    - source: {{ mysql.configsource }}
