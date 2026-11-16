# VPC Module
module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidrs = var.public_subnet_cidrs
  availability_zones  = var.availability_zones
}

# EC2 Module
module "ec2" {
  source = "./modules/ec2-instances"

  vpc_id         = module.vpc.vpc_id
  subnet_ids     = module.vpc.public_subnet_ids
  ami_id         = var.ami_id
  instance_type  = var.instance_type
  instance_count = var.instance_count
  ssh_cidr       = var.ssh_cidr
}

# S3 Module
module "s3" {
  source = "./modules/s3-bucket"

  bucket_name = var.bucket_name
}
