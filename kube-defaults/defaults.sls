/etc/hosts:
  file.managed:
    - source: salt://kube-defaults/files/hosts
    - user: root
    - group: root
    - mode: 644
    - replace: True

# /etc/yum.repos.d/virt7-docker-common-release.repo:
#   file.managed:
#     - source: salt://kube-defaults/files/virt7-docker-common-release.repo
#     - user: root
#     - group: root
#     - mode: 644

install_base_packages:
  pkg.installed:
    #- enablerepo: virt7-docker-common-release
    - pkgs:
      - kubernetes
      - etcd 
      - flannel

