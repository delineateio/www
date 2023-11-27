terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = ">= 3.6.0, < 5.0.0"
    }
    vercel = {
      source  = "vercel/vercel"
      version = ">= 0.10.3, < 2.0.0"
    }
  }
}
