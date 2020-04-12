hello_orchestration:
  salt.state:
    - tgt: '*'  
    - sls:
      - hello
