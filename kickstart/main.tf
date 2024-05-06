provider "google" {
  credentials = var.credential_file
  project     = var.project_id
  region      = var.region
  # zone        = var.zone
}

resource "google_project_service" "project" {
  project = var.project_id
  service = "compute.googleapis.com"

  timeouts {
    create = "30m"
    update = "40m"
  }

  disable_dependent_services = true
}
