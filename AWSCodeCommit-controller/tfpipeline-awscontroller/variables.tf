
variable "region" {
  default = "eu-central-1"
}

variable admin_email {
  type        = string
  description = "Aviatrix admin email address"
}

variable admin_password {
  type        = string
  description = "Aviatrix admin password"
}

variable access_account_name {
  type        = string
  description = "The controller account friendly name (mapping to the AWS account ID)"
}

variable access_account_email {
  type        = string
  description = "The controller account friendly name (mapping to the AWS account ID)"
}

variable account_id {
  type        = string
  description = "AWS account ID"
}

variable customer_license_id {
  type        = string
  description = "Customer license ID"
  default     = ""
}

variable controller_version {
  type        = string
  description = "version to deploy"
  default     = ""
}
