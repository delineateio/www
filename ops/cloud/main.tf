# https://registry.terraform.io/providers/vercel/vercel/latest/docs/resources/project
resource "vercel_project" "this" {
  name           = "delineateio-www"
  root_directory = "dev"

  git_repository = {
    type = "github"
    repo = "delineateio/delineateio-www"
  }
}

module "prod_domain" {
  source = "./modules/domain"

  subdomain = "www"
  domain    = "delineate"
  tld       = "io"
}

module "dev_domain" {
  source = "./modules/domain"

  subdomain   = "www"
  domain      = "delineate"
  tld         = "dev"
  branch_name = "preview"
}
