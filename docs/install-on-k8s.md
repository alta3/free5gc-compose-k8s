# How to Install the Free 5G Core on Kubernetes

## Install pre-reqs as listed on the README.md file of this repo and build the images
1. Install pre-reqs

    `$` `cd ~/free5gc-compose-k8s/scripts && bash pre-reqs.sh`

0. Build docker images

    `$` `cd ~/free5gc-compose-k8s/scripts && bash build-images.sh`

0. Create a local docker registry

    `$` `cd ~/free5gc-compose-k8s/scripts && bash build-local-registry.sh`

0. Run the script to push the images to your local docker registry

    `$` `cd ~/free5gc-compose-k8s/scripts && bash tag-and-push.sh` 
