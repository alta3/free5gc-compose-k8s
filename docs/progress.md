# Current Progress

This project is still under development.

In order to contribute, you must:

1. Start with an oss machine (5g flavor)
2. Follow the first 5 steps of [docs/install-on-k8s.md](docs/install-on-k8s.md)

Step 6 is not currently working as intended. Work that has been done:
1. All manifests have been made (deployment, configMaps, and services) - at least, we think so.
2. SOME of them are working as expected:
- [x] db-deploy.yaml
- [x] db-cm.yaml
- [x] webui-deploy.yaml
- [x] webui-cm.yaml
- [x] webui-svc.yaml
3. Most of them are not. Debugging steps to take:

- Run step 6 of the **install-on-k8s** instructions.
- `kubectl get pods`
- `source <(kubectl completion bash)`
- Pick your favorite Pod to try to start fixing up. Then, `kubectl logs <POD_NAME>`
- If there are no logs, try `kubectl describe <POD_NAME>`
- Many of the issues observed involve either
    1. Not being able to use the configMap that has been placed inside of the container
    2. Not resolving the service because the FQDN is wrong (likely, in the configMap - this should be changed to <SVC_NAME>.
    3. Some commands may need to be split into using both command: and args:
