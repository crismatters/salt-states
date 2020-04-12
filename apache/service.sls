{% from "apache/map.jinja" import apache with context %}
apache_service:
  service.running:
    - name: {{ apache.service }}
