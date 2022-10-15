locals {
  naked_domain_name = "${lower(var.domain)}.${lower(var.tld)}"
  full_domain_name  = "${lower(var.subdomain)}.${local.naked_domain_name}"
  flat_domain       = replace(local.naked_domain_name, ".", "")
  project_name      = "${local.flat_domain}-${var.subdomain}"
}

data "vercel_project" "this" {
  name = "delineateio-www"
}

resource "vercel_project_domain" "this" {
  project_id = data.vercel_project.this.id
  domain     = local.full_domain_name
  git_branch = var.branch_name == "" ? null : var.branch_name
}

resource "vercel_project_domain" "redirect" {
  project_id           = data.vercel_project.this.id
  domain               = local.naked_domain_name
  redirect             = vercel_project_domain.this.domain
  redirect_status_code = 308
}

data "cloudflare_zone" "this" {
  name = local.naked_domain_name
}

resource "cloudflare_record" "cname" {
  zone_id = data.cloudflare_zone.this.zone_id
  name    = var.subdomain
  value   = "cname.vercel-dns.com"
  type    = "CNAME"
  ttl     = 60
}

resource "cloudflare_record" "a" {
  zone_id = data.cloudflare_zone.this.zone_id
  name    = local.naked_domain_name
  value   = "76.76.21.21"
  type    = "A"
  ttl     = 60
}

resource "cloudflare_record" "caa" {
  zone_id = data.cloudflare_zone.this.zone_id
  name    = local.naked_domain_name
  data {
    flags = "0"
    tag   = "issue"
    value = "letsencrypt.org"
  }
  type = "CAA"
  ttl  = 60
}
