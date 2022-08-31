generate "provider" {
  path      = "provider.tf"
  if_exists = "skip"
  contents  = <<EOF
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.28.0"
    }
  }
}

provider "google" {
  credentials = var.service_account
  project     = var.project_id
}
EOF
}

generate "common_variables" {
  path      = "common_variable.tf"
  if_exists = "skip"
  contents  = <<EOF
variable "project_id" {}

variable "service_account" {}
EOF
}
