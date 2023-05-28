terraform {    
    required_providers {
        proxmox = {
          source  = "telmate/proxmox"
          version = "2.9.3"
        }
    }
}

variable "proxmox_api_url" {
  type = string

}
variable "proxmox_api_token_id" {
  type = string
  sensitive = true
}
variable "proxox_api_token_secret" {
  type = string
  sensitive = true
}
# provider for variables from credentials.auto.tfvars
provider "proxmox" {
  pm_api_url      = var.proxmox_api_url
  pm_api_token_id = var.proxmox_api_token_id
  pm_api_token_secret = var.proxox_api_token_secret
  # pm_user = var.proxmox_api_token_id
  # pm_password = var.proxox_api_token_secret
  # pm_parallel     = 10
  # pm_timeout      = 600
  # pm_tls_insecure = true
  # pm_log_enable = true
  # pm_log_file   = "./terraform-plugin-proxmox.log"
  # pm_debug      = true
  # pm_log_levels = {
  #   _default    = "debug"
  #   _capturelog = ""
  # }
  # pm_ca_file = "/etc/ssl/certs/ca-certificates.crt"
}


