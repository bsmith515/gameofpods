#!/bin/bash

DATESTAMP=$(date +%Y%m%d%H%M%S)

if [[ -f ~/.kube/config ]]
then
  cp ~/.kube/config ~/.kube/config.${DATESTAMP}
else
  echo "~/.kube/config does not exist"
  exit 1
fi

kubectl config set-credentials drogo --client-certificate=/root/drogo.crt --client-key=/root/drogo.key
kubectl config set-context developer --cluster=kubernetes --namespace=development --user=drogo