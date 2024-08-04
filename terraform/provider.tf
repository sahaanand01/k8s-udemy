provider "google" {
  project = var.project_id
  region = var.project_region
}
terraform {
  backend "gcs" {
    bucket = "terraform-state-bucket-bkup"
    prefix  = "terraform/state"
  }
}