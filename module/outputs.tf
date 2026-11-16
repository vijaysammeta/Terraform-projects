
output "vpc_id" {
  description = "Created VPC ID"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Created public subnet IDs"
  value       = module.vpc.public_subnet_ids
}

output "ec2_instance_ids" {
  description = "Created EC2 instance IDs"
  value       = module.ec2.instance_ids
}

output "ec2_public_ips" {
  description = "EC2 public IP addresses"
  value       = module.ec2.public_ips
}

output "ec2_security_group_id" {
  description = "EC2 security group ID"
  value       = module.ec2.security_group_id
}

output "s3_bucket_id" {
  description = "S3 bucket name"
  value       = module.s3.bucket_id
}

output "s3_bucket_arn" {
  description = "S3 bucket ARN"
  value       = module.s3.bucket_arn
}
