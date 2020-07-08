#!/bin/bash
set -ex

helm upgrade --install --debug zigbee2mqtt ../zigbee2mqtt --namespace zigbee2mqtt