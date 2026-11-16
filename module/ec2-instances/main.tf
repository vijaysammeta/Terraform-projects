resource "aws_security_group" "ec2_sg" {
  name        = "terraform-ec2-sg"
  description = "Security group for Terraform EC2 instances"
  vpc_id      = var.vpc_id

  ingress {
    description = "SSH access"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.ssh_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Terraform-EC2-SG"
  }
}

resource "aws_instance" "server" {
  count = var.instance_count

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.subnet_ids[
    count.index % length(var.subnet_ids)
  ]

  vpc_security_group_ids = [
    aws_security_group.ec2_sg.id
  ]

  associate_public_ip_address = true

  tags = {
    Name = "Terraform-EC2-${count.index + 1}"
  }
}
