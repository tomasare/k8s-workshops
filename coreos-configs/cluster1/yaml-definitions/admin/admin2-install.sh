#!/bin/bash

curl http://192.168.1.103/admin/admin2-cloud-config.yaml -o cloud-config.yaml
sudo coreos-install -d /dev/vda -c cloud-config.yaml -C stable
sudo sync
sudo shutdown -h now