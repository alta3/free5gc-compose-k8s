mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl apply -f https://docs.projectcalico.org/v3.20/manifests/calico.yaml
echo Waiting for Networking To Get Started
sleep 15
kubectl get pods -A
kubectl taint node oss node-role.kubernetes.io/master:NoSchedule-
