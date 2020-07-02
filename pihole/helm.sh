#manually create secret first

#kubectl create secret generic pihole-secret \
#    --from-literal password=<<YOURPASSWORD>> \
#    --namespace pihole

#!/bin/bash
set -ex

helm repo add mojo2600 https://mojo2600.github.io/pihole-kubernetes/
helm repo update

helm upgrade --install --debug pihole-volumes ../pihole --namespace pihole

helm upgrade --install pihole -f pihole.values.yml mojo2600/pihole --namespace=pihole

#retrieve bearer token: kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token