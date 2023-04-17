#!/bin/bash

TF_LOCATION=$(dirname $0)

date >> ${TF_LOCATION}/eks-destroy.date.log

terraform -chdir=${TF_LOCATION} destroy -target=module.cluster.module.eks_blueprints_kubernetes_addons --auto-approve 
terraform -chdir=${TF_LOCATION} destroy -target=module.cluster.module.descheduler --auto-approve
terraform -chdir=${TF_LOCATION} destroy -target=module.cluster.module.eks_blueprints --auto-approve 
terraform -chdir=${TF_LOCATION} destroy --auto-approve

date >> ${TF_LOCATION}/eks-destroy.date.log
