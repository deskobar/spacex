variable "is_production" {
  type        = bool
  description = "Is production environment"
  default     = false
}

variable "vercel_api_token" {
  type        = string
  description = "Vercel API token"
}