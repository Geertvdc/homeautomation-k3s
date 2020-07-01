#!/bin/bash
set -ex

helm upgrade --install unifi -f values.yml stable/unifi --namespace=unifi


#how to use unifi endpoint

#export POD_NAME=$(kubectl get pods --namespace unifi -l "app.kubernetes.io/name=unifi" -o jsonpath="{.items[0].metadata.name}")
#kubectl --namespace unifi port-forward $POD_NAME 8443:{.Values.guiService.port}
#Visit https://127.0.0.1:8443 to use your application