GCP Terraform Simple Example
============================

### Using git

Create a repo on GitHub and copy/paste commands that it gives you to update your code. For example:

````powershell
git add .
git commit -m "initial commit"
git branch -M main
git remote add origin https://github.com/tonyskidmore/gcp-terraform.git
git push -u origin main
````

After making updates to files:

````powershell
git status
git add .
git commit -m "my new updates"
git push # -u origin main
````

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