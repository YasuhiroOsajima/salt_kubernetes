/etc/kubernetes/config:
  file.managed:
    - source: salt://kube-minion/files/kubernetes_config
    - user: root
    - group: root
    - mode: 644
    - replace: True

/etc/kubernetes/kubelet:
  file.managed:
    - source: salt://kube-minion/files/kubelet
    - user: root
    - group: root
    - mode: 644
    - replace: True

