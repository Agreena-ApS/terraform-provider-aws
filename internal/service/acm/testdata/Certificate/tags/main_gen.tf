# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

resource "aws_acm_certificate" "test" {
  certificate_body = var.certificate_pem
  private_key      = var.private_key_pem

  tags = var.resource_tags
}



variable "certificate_pem" {
  type     = string
  nullable = false
}

variable "private_key_pem" {
  type     = string
  nullable = false
}

variable "resource_tags" {
  description = "Tags to set on resource. To specify no tags, set to `null`"
  # Not setting a default, so that this must explicitly be set to `null` to specify no tags
  type     = map(string)
  nullable = true
}

