#!/usr/bin/env bash
CLUSTER_NAME=${1:-devcluster}

# Create kind cluster with ingress controller
./kind-reg-ingress.sh ${CLUSTER_NAME}

#wait fro the ingress controller to be up and running
sleep 60s

# create dashboard namespace
kubectl create ns dashboard

# Install okd console
kubectl apply -f ./okd-console/01-serviceaccount.yml
kubectl apply -f ./okd-console/02-rbac.yml
kubectl apply -f ./okd-console/03-deployment.yml
kubectl apply -f ./okd-console/04-svc.yml
kubectl apply -f ./okd-console/05-ingress.yml

# Install OLM
kubectl create -f https://raw.githubusercontent.com/operator-framework/operator-lifecycle-manager/master/deploy/upstream/quickstart/crds.yaml
kubectl create -f https://raw.githubusercontent.com/operator-framework/operator-lifecycle-manager/master/deploy/upstream/quickstart/olm.yaml
