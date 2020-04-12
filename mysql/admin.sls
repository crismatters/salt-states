 mysql_admin_user:
   mysql_user.present:
     - name: {{ pillar['mysql']['admin']['name'] }}
     - password: {{ pillar['mysql']['admin']['password'] }}
     - host: 192.168.56.13
