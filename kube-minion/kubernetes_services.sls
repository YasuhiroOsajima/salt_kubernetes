enable_kube-proxy:
  service.running:
    - name: kube-proxy
    - enable: True
    - require:
      - pkg: install_base_packages

enable_kubelet:
  service.running:
    - name: kubelet
    - enable: True
    - require:
      - pkg: install_base_packages

