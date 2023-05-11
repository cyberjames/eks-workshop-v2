#!/bin/bash

TF_LOCATION=$(dirname $0)

date >> ${TF_LOCATION}/eks-start.date.log
echo "===> TF initialization..." >> ${TF_LOCATION}/eks-start.date.log
terraform -chdir=${TF_LOCATION} init
echo "" >> ${TF_LOCATION}/eks-start.date.log

echo "===> TF applying..." >> ${TF_LOCATION}/eks-start.date.log
terraform -chdir=${TF_LOCATION} apply --auto-approve
echo "" >> ${TF_LOCATION}/eks-start.date.log
date >> ${TF_LOCATION}/eks-start.date.log
