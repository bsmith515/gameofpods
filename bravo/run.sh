#!/bin/bash

kubectl create -f ./drupal-pv.yaml
kubectl create -f ./drupal-mysql-pv.yaml
kubectl create -f ./drupal-pvc.yaml
kubectl create -f ./drupal-mysql-pvc.yaml
kubectl create -f ./drupal-mysql-secret.yaml
kubectl create -f ./drupal-mysql.yaml
kubectl create -f ./drupal-mysql-service.yaml
kubectl create -f ./drupal.yaml