#initial installation of dashboard found here: https://rancher.com/docs/k3s/latest/en/installation/kube-dashboard/
# this will only set up IAM

#!/bin/bash
set -ex

helm upgrade --install --debug --namespace kubernetes-dashboard \
  dashboard ../dashboard


#retrieve bearer token: kubectl -n kubernetes-dashboard describe secret admin-user-token | grep ^token