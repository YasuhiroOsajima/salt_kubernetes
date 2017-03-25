enable_kube-apiserver:
  service.running:
    - name: kube-apiserver
    - enable: True
    - require:
      - pkg: install_base_packages

enable_kube-controller-manager:
  service.running:
    - name: kube-controller-manager
    - enable: True
    - require:
      - pkg: install_base_packages

enable_kube-scheduler:
  service.running:
    - name: kube-scheduler
    - enable: True
    - require:
      - pkg: install_base_packages
