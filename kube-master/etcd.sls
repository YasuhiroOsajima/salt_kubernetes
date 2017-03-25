/etc/etcd/etcd.conf:
  file.managed:
    - source: salt://kube-master/files/etcd.conf
    - user: root
    - group: root
    - mode: 644
    - replace: True

enable_etcd:
  service.running:
    - name: etcd
    - enable: True
    - require:
      - pkg: install_base_packages

set_etcd_mkdir:
  cmd.run:
    - name: 'etcdctl mkdir /kube-centos/network'
    - require:
      - service: enable_etcd

set_etcd_mk:
  cmd.run:
    - name: 'etcdctl mk /kube-centos/network/config "{ \"Network\": \"172.30.0.0/16\", \"SubnetLen\": 24, \"Backend\": { \"Type\": \"vxlan\" } }"'
    - require:
      - service: enable_etcd

