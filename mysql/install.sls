{% from "mysql/map.jinja" import mysql with context %}
install_mysql_packages:
  pkg.installed:
    - pkgs:
      - {{ mysql.server }}
      - {{ mysql.client }}
      - {{ mysql.python }}
