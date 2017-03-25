/etc/hosts:
  file.managed:
    - source: salt://kube-defaults/files/hosts
    - user: root
    - group: root
    - mode: 644
    - replace: True

install_base_packages:
  pkg.installed:
    - pkgs:
      - kubernetes
      - etcd 
      - flannel

