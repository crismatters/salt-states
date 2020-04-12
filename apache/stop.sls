{% from "apache/map.jinja" import apache with context %}
apache_service:
  service.dead:
    - name: {{ apache.service }}
