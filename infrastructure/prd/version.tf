terraform {
  cloud {
    organization = "deskobarPersonal"
    workspaces {
      name = "spacex"
    }
  }

  required_providers {
    vercel = {
      source  = "vercel/vercel"
      version = "~> 0.4"
    }
  }
}

provider "vercel" {
  api_token = var.vercel_api_token
}
