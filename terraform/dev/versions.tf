terraform {
  required_version = ">= 1.5.2"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.73.0"
    }
  }
}