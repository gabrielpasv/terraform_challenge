variable aws_region {
  default = "us-east-1"
  type    = "string"
}

variable aws_account_ids {
  default = "583131116328"
  type    = "string"
}

variable vpc_terraform_cidr {
  default     = "10.0.0.0/24"
  type        = "string"
  description = "IP CIDR Range for VPC_Terraform."
}

variable vpc_terraform_subnet {
  default     = "10.0.20.0/24"
  type        = "string"
  description = "IP CIDR Range for VPC_Terraform."
}
