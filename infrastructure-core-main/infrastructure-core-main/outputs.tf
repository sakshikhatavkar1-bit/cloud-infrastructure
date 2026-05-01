output "backup_truenas_account_name" {
  value       = module.core.backup_truenas_account_name
  description = "TrueNAS cloud credential account name."
  sensitive   = true
}

output "backup_truenas_account_key" {
  value       = module.core.backup_truenas_account_key
  description = "TrueNAS cloud credential account key."
  sensitive   = true
}

output "schnerring_net_dns_servers" {
  value       = module.core.schnerring_net_dns_servers
  description = "Cloudflare-assigned schnerring.net DNS servers."
}

output "schnerring_app_dns_servers" {
  value       = module.core.schnerring_app_dns_servers
  description = "Cloudflare-assigned schnerring.app DNS servers."
}

output "sensingskies_org_dns_servers" {
  value       = module.core.sensingskies_org_dns_servers
  description = "Cloudflare-assigned sensingskies.org DNS servers."
}
