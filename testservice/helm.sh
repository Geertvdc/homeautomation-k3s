
#!/bin/bash
set -ex

helm upgrade --install --debug --namespace test \
  testservice ../testservice

