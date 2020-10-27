# Kubernetes kind configuration

This project explains and contains instructions to set up a K8s cluster using `kind`
and next to provision it with a docker registry, dashboard, ingress controller, ...

### Prerequisites

- [Docker client](https://docs.docker.com/desktop/)
- [Kind](https://kind.sigs.k8s.io/docs/user/quick-start/)
- [Kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Terminal based UI to manage clusters - K9s](https://k9scli.io/) - optional but recommended !!

### To create the kind cluster with ingress controller, olm and okd console installed execute the below bash script

Execute the following bash script to create a Kind cluster having a docker registry and ingress controller
```bash
./setupKind.sh <NAME_OF_CLUSTER>
```

To access the okd console in your browser http://console.127.0.0.1.nip.io/
