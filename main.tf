terraform {
  required_version = ">= 0.13"
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
    google = {
      source = "hashicorp/google"
    }
  }
  backend "gcs" {}
}


module "cf" {
  source = "./modules/cf"

  cloudflare_zone_id = var.cloudflare_zone_id
  cloudflare_api_token = var.cloudflare_api_token
  service_ip = var.service_ip

}