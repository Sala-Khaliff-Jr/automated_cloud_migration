#!/bin/bash

# to generate a unique number
current_time=$(date +"%T")
# Create a S3 Bucket to upload files
create_s3_bucket(){
    aws sts get-caller-identity
    aws s3 mb s3://automated.cloud.management --profile default --region ap-south-1
    # aws s3api create-bucket --bucket automated.cloud.migrtation
}

# Upload required files to S3 Bucker
upload_web_files(){
    aws s3 cp apache_files.zip s3://automated.cloud.management --profile default --region ap-south-1
}