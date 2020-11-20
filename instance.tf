/*
Review:

Get Started - Google Cloud
https://learn.hashicorp.com/collections/terraform/gcp-get-started

Build Infrastructure
https://learn.hashicorp.com/tutorials/terraform/google-cloud-platform-build

*/

provider "google" {
  # normally recommended to pin to a certain version of a provider
  # to help prevent breaking changes on major version updates
  # see: https://www.terraform.io/docs/configuration/version-constraints.html#version-constraint-syntax
  # such as:
  # version = "3.48.0"
  # or the below just to stick with any version 3.x
  version = "~> 3"

  # we could specify the crdentials file path here or
  # set the GOOGLE_CLOUD_KEYFILE_JSON environment variable
  # PowerShell example:
  # $env:GOOGLE_CLOUD_KEYFILE_JSON="$env:USERPROFILE/gcp/terraform.json"
  # Bash example:
  # export GOOGLE_CLOUD_KEYFILE_JSON="~/gcp/terraform.json"
  # credentials = file(pathexpand("~/gcp/terraform.json"))

  # we could specify the project ID here or we could use variables or
  # set the GOOGLE_PROJECT environment variable
  # PowerShell example:
  # $env:GOOGLE_PROJECT="terraform-999999"
  # project      = "terraform-999999"
  # Bash example:
  # export GOOGLE_PROJECT="terraform-999999"

  region = "us-central1"
  zone   = "us-central1-c"
}

resource "google_compute_instance" "default" {

  name         = "terraform"
  machine_type = "n1-standard-1"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "default"
    access_config {
    }
  }
}
