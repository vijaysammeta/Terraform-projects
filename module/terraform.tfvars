vpc_cidr = "10.0.0.0/16"

public_subnet_cidrs = [
  "10.0.1.0/24",
  "10.0.2.0/24"
]

availability_zones = [
  "ap-south-1a",
  "ap-south-1b"
]

# Replace with your actual Mumbai AMI ID
ami_id = "ami-xxxxxxxxxxxxxxxxx"

instance_type  = "t2.micro"
instance_count = 2

# Your public IP with /32
ssh_cidr = "13.201.69.250/32"

# Choose a globally unique bucket name
bucket_name = "yourname-terraform-demo-2026-unique"
