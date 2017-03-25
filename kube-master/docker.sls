enable_docker:
  service.running:
    - name: docker
    - enable: True
    - require:
      - pkg: install_base_packages

