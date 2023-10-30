module "prd" {
  source           = "../terraform"
  vercel_api_token = var.vercel_api_token
  is_production    = true
}