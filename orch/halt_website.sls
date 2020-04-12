webserver:
  salt.state:
    - tgt: 'roles:web'
    - tgt_type: 'grain'
    - sls:
      - apache.stop
      - mysql.stop
mysql_server:
  salt.state:
    - tgt: 'roles:db'
    - tgt_type: 'grain'
    - sls:
      - mysql.stop
ftp_server:
  salt.state:
    - tgt: 'roles:ftp'
    - tgt_type: 'grain'
    - sls:
      - proftpd.stop
