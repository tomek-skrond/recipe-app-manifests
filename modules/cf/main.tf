terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

provider "cloudflare" {
    api_token = var.cloudflare_api_token
}

resource "cloudflare_record" "default" {
  zone_id = var.cloudflare_zone_id
  name    = "recipes"
  value   = var.service_ip
  type    = "A"
  proxied = false
}