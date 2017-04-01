# salt_kubernetes

Deploy kunbernetes environment.

Use this file in my blog.    
http://hibimoromoro.hatenadiary.jp/entry/2017/03/26/161229  

in salt-master server  

    # cd /srv/salt/
    # git clone https://github.com/YasuhiroOsajima/salt_kubernetes.git
    # salt -N 'kube-master' state.sls salt_kubernetes/deploy_kube-master saltenv=base
    # salt -N 'kube-minion' state.sls salt_kubernetes/deploy_kube-minion saltenv=base
