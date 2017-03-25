/etc/sysconfig/flanneld:
  file.managed:
    - source: salt://kube-minion/files/flanneld
    - user: root
    - group: root
    - mode: 644
    - replace: True

enable_flanneld:
  service.running:
    - name: flanneld
    - enable: True
    - require:
      - pkg: install_base_packages
