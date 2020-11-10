#!/bin/bash

hcloud server list | grep master | grep -v ultra | while read -r line ; do
  IP=$(echo $line | awk '{print $4}')
  ID=$(echo $line | awk '{print $2}' | tr -dc '0-9')
  cfcli rm '*'.rancher-${ID}
  cfcli rm rancher-${ID}
done

hcloud server list | grep master | grep -v ultra | while read -r line ; do
  IP=$(echo $line | awk '{print $4}')
  ID=$(echo $line | awk '{print $2}' | tr -dc '0-9')
  cfcli add -t A '*'.rancher-${ID} $IP
  cfcli add -t A rancher-${ID} $IP
done
