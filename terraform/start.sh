#!/bin/bash

TF_LOCATION=$(dirname $0)

echo "Deleting terraform files & dirs and logs..."
rm -rf ${TF_LOCATION}/.terraform* *log

date >> ${TF_LOCATION}/eks-start.date.log
echo "===> TF initialization..." >> ${TF_LOCATION}/eks-start.date.log
terraform -chdir=${TF_LOCATION} init -upgrade
echo "" >> ${TF_LOCATION}/eks-start.date.log

echo "===> TF applying..." >> ${TF_LOCATION}/eks-start.date.log
terraform -chdir=${TF_LOCATION} apply --auto-approve
echo "" >> ${TF_LOCATION}/eks-start.date.log
date >> ${TF_LOCATION}/eks-start.date.log
