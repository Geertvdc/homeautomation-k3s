#manually create secret first

#kubectl create secret generic pihole-secret \
#    --from-literal password=<<YOURPASSWORD>> \
#    --namespace pihole

#!/bin/bash
set -ex

helm upgrade --install --debug pihole ../pihole --namespace pihole