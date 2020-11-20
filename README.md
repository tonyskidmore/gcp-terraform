GCP Terraform Simple Example
============================

### Introduction

Simple example for Terraform and GCP in session with Temi

You could clone this and set environment variables for your credentials file and Project ID e.g.:

````powershell

git clone https://github.com/tonyskidmore/gcp-terraform.git
cd gcp-terraform
$env:GOOGLE_CLOUD_KEYFILE_JSON="C:\Users\anthony.skidmore\gcp\terraform.json"
$env:GOOGLE_PROJECT="terraform-296211"

terraform init
terraform plan
terraform apply

````

When you are done run:

````powershell

terraform destroy

````