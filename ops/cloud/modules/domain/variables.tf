variable "subdomain" {
  description = "subdomain to create"
  type        = string
}

variable "domain" {
  description = "domain to create"
  type        = string
}

variable "tld" {
  description = "top level domain for the domain"
  type        = string
}

variable "branch_name" {
  description = "name of the branch to use"
  type        = string
  default     = ""
}
