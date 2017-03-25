/etc/kubernetes/config:
  file.managed:
    - source: salt://kube-master/files/kubernetes_config
    - user: root
    - group: root
    - mode: 644
    - replace: True

/etc/kubernetes/apiserver:
  file.managed:
    - source: salt://kube-master/files/kubernetes_apiserver
    - user: root
    - group: root
    - mode: 644
    - replace: True

