# How to Install the Free 5G Core on Kubernetes

## Install pre-reqs as listed on the README.md file of this repo and build the images

1. ssh to oss

   `$`  `ssh oss`

0. Clone this repository

    `$` `git clone https://github.com/alta3/free5gc-compose-k8s.git`

0. Install pre-reqs

    `$` `cd ~/free5gc-compose-k8s/scripts && bash pre-reqs.sh`

0. Build docker images

    `$` `cd ~/free5gc-compose-k8s/scripts && bash build-images.sh`

0. Create a local docker registry

    `$` `cd ~/free5gc-compose-k8s/scripts && bash build-local-registry.sh`

0. Run the script to push the images to your local docker registry

    `$` `cd ~/free5gc-compose-k8s/scripts && bash tag-and-push.sh`

0. If you want to install a basic kubeadm cluster easily, follow these steps:

    1. Become root

        `$` `sudo su`

    0. Run the first k8s install script

        `#` `cd /home/student/free5gc-compose-k8s/scripts && bash k8s-install-01.sh`

    0. Stop being root

        `#` `exit`

    0. Run the second k8s install script.

        `$` ` cd ~/free5gc-compose-k8s/scripts && bash k8s-install-02.sh`

0. For reasons not yet determined, k8s will NOT read http based imgages with restarting containerd, therefore, restart containerd

    `student@oss:~/free5gc-compose-k8s/scripts$` `sudo systemctl restart containerd`

0. Now, you should be able to start up all of the Free 5G Core on Kubernetes.

    `$` `kubectl apply -f ~/free5gc-compose-k8s/manifests/`
   
