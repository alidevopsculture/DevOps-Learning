#!/bin/bash

##############################################
# Author: Ali Murtaza
# Date: 28 MAR 2025
# Description: This script reports the AWS usage details.
# Version: 2.0
##############################################

# Enable debugging
set -x

# Define Section Headers
echo "========================================"
echo " AWS USAGE REPORT - Generated on $(date) "
echo "========================================"

# List S3 Buckets
echo -e "\n Listing S3 Buckets..."
aws s3 ls

# List EC2 Instances (Filtered to Show Only Instance IDs)
echo -e "\n Listing EC2 Instance IDs..."
aws ec2 describe-instances | jq -r '.Reservations[].Instances[].InstanceId'

# List AWS Lambda Functions
echo -e "\n Listing AWS Lambda Functions..."
aws lambda list-functions | jq -r '.Functions[].FunctionName'

# List AWS IAM Users
echo -e "\n Listing AWS IAM Users..."
aws iam list-users | jq -r '.Users[].UserName'

echo -e "\n AWS Usage Report Execution Completed!"
