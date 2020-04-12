verify_proftpd:
  service.running:
    - name: proftpd
    - enable: False
