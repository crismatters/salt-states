apache_server:
  salt.state:
    - tgt: 'roles:web'
    - tgt_type: 'grain'
    - sls:
      - clone
      - apache
      - mysql.install
      - mysql.service
mysql_server:
  salt.state:
    - tgt: 'roles:db'
    - tgt_type: 'grain'
    - sls:
      - mysql
ftp_server:
  salt.state:
    - tgt: 'roles:ftp'
    - tgt_type: 'grain'
    - sls:
      - proftpd
