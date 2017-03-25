base:
  '*':
    - kube-defaults/defaults
  'kube-master*':
    - kube-master/docker
    - kube-master/etcd
    - kube-master/kubernetes_conf
    - kube-master/flannel
    - kube-master/kubernetes_services
  'kube-minion*':
    - kube-minion/docker
    - kube-minion/kubernetes_conf
    - kube-minion/flannel
    - kube-minion/kubernetes_services
