variable "domain_names" {
  description = "Domain names for this certificate - the first is the main domain and others are subject alternative names"
  type        = list(string)
}

variable "validation_method" {
  description = "DNS, EMAIL or NONE"
  default     = "DNS"
}

variable "hosted_zone_id" {
  description = "Route53 hosted zone to create validation records. For use when validation_method is DNS. Leave it blank to validate manually."
  default     = ""
}

variable "create_validation_record" {
  description = "Flag to whether create or not the Route 53 validation record"
  type        = bool
  default     = true
}

variable "export" {
  description = "Whether the certificate can be exported"
  type = bool
  default = false
}