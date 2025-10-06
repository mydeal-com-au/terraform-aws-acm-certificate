resource "aws_acm_certificate" "cert" {
  domain_name               = var.domain_names[0]
  subject_alternative_names = slice(var.domain_names, 1, length(var.domain_names))
  validation_method         = var.validation_method

  dynamic "options" {
    for_each = var.export ? [1] : []
    content {
      export = "ENABLED"
    }
  }

  lifecycle {
    create_before_destroy = true
  }
}