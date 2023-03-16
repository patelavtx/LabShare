output "private_ip" {
  value = module.aws-controller.private_ip
}

output "public_ip" {
  value = module.aws-controller.public_ip
}

output "vpc_id" {
  value = module.aws-controller.vpc_id
}

output "subnet_id" {
  value = module.aws-controller.subnet_id
}

output "security_group_id" {
  value = module.aws-controller.security_group_id
}

output "instance_id" {
  value = module.aws-controller.instance_id
}
