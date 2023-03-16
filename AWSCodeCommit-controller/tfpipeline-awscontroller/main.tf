#  TEST -  redeploy by trigger repo update - observation :
#  REMOVED vpc from codbuild ; without this the tfplan and tfapply should run
# default is 'BYOL'
# https://registry.terraform.io/modules/AviatrixSystems/aws-controller/aviatrix/latest

module "aws-controller" {
  source  = "AviatrixSystems/aws-controller/aviatrix"
  version = "1.0.3"
  incoming_ssl_cidrs = ["0.0.0.0/0"]
  admin_email         = var.admin_email
  admin_password      = var.admin_password
  access_account_name = var.access_account_name
  access_account_email = var.access_account_email
  iam_roles_name_prefix = "atultfreg"
  ec2_role_name = "atultfreg-role-ec2"
  app_role_name = "atultfreg-role-app"
  vpc_cidr = "10.10.0.0/16"
  subnet_cidr = "10.10.10.0/24"
  use_existing_keypair = true
  key_pair_name = "atul-eucentral"
  controller_name_prefix = "atultfreg"
  controller_name = "atultfreg-mar14"
  aws_account_id = var.account_id
  controller_version = var.controller_version
  customer_license_id = var.customer_license_id
}
