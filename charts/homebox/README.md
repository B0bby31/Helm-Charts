# Helm chart for HomeBox

![Latest Released Version](https://img.shields.io/github/v/tag/b0bby31/Helm-Charts?sort=semver&filter=*homebox-*)

## Introduction

This chart bootstraps a [HomeBox](https://homebox.software) deployment on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager. 

Since this chart is designed for kubernetes, we assume the user has an external database (Currently, PostgreSQL is required) running; that is this chart does not support a deployment of HomeBox with SQLite. 
  
## Quick Start

To deploy HomeBox using this Helm chart, follow these steps:

```console
$ helm repo add b0bby31 https://charts.plutode.com
$ helm repo update
$ wget https://raw.githubusercontent.com/b0bby31/Helm-Charts/main/charts/homebox/values.yaml
```

Now, edit the database section in the values file to connect to your database and then, deploy with:

```console
$ helm install --values value.yaml homebox b0bby31/homebox
```

See the [Configuration](#configuration) section for details on customizing the deployment.

## Configuration

The following table lists the configurable parameters of the HomeBox chart and their default values.

# HomeBox Helm Chart

This document provides detailed configuration options for the HomeBox Helm chart.

| Parameter | Description | Default |
| --------- | ----------- | ------- |
| `replicaCount` | Number of replicas for the deployment | `1` |
| `image.repository` | Repository for the Home Assistant image | `ghcr.io/home-assistant/home-assistant` |
| `image.pullPolicy` | Image pull policy | `IfNotPresent` |
| `image.tag` | Overrides the image tag (default is the chart appVersion) | `""` |
| `imagePullSecrets` | List of imagePullSecrets for private image repositories | `[]` |
| `nameOverride` | Override the default name of the Helm chart | `""` |
| `fullnameOverride` | Override the default full name of the Helm chart | `""` |
| `database.enabled` | Whether to use a postgress database | `true` |




| `podAnnotations` | Annotations to add to the pod | `{}` |
| `podLabels` | Labels to add to the pod | `{}` |
| `podSecurityContext` | Pod security context settings | `{}` |
| `securityContext` | Security context settings | `{}` |
| `env` | Environment variables | `[]` |
| `envFrom` | Use environment variables from ConfigMaps or Secrets | `[]` |
| `service.type` | Service type (ClusterIP, NodePort, LoadBalancer, or ExternalName) | `ClusterIP` |
| `service.port` | Service port | `80` |
| `ingress.enabled` | Enable ingress for HomeBox | `false` |
| `autoscaling.enabled` | Enable autoscaling for HomeBox | `false` |
| `resources` | Resource settings for the container | `{}` |
| `volumes` | Additional volumes to be mounted in the HomeBox container | `[]` |
| `volumeMounts` | Additional volume mounts to be mounted in the HomeBox container | `[]` |
| `nodeSelector` | Node selector settings for scheduling the pod on specific nodes | `{}` |
| `tolerations` | Tolerations settings for scheduling the pod based on node taints | `[]` |
| `affinity` | Affinity settings for controlling pod scheduling | `{}` |


