/etc/hosts:
  file.append:
    - text:
      - '192.168.66.21 salt-master'
      - '192.168.66.22 kube-master1'
      - '192.168.66.23 kube-master2'
      - '192.168.66.24 kube-minion1'
      - '192.168.66.25 kube-minion2'

install_base_packages:
  pkg.installed:
    - pkgs:
      - kubernetes
      - etcd 
      - flannel

