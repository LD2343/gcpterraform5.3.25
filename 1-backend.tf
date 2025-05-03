# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "tfstate-050325"
    prefix = "terraform/state"
    credentials = "class65gcp-415fc4ad4e2e.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}
