variable "cloudflare_api_token" {
  type      = string
  sensitive = true
}
variable "cloudflare_zone_id" {
  type      = string
  sensitive = true
}

variable "service_ip" {
  type      = string
  sensitive = true
}