variable "location" {
  type        = string
  description = "Azure region where resources will be deployed."
}

variable "aks_location" {
  type        = string
  description = "Azure region where AKS will be deployed."
}

variable "tags" {
  type        = map(string)
  description = "Default Azure tags applied to any resource."
}

variable "cloudflare_account_id" {
  type        = string
  description = "Account ID to manage the zone resource in."
  sensitive   = true
}
