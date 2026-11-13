variable "region" {
  type        = string
}

variable "cidr" {
  type        = string
}

variable "subnet_cidrs" {
  type = list(string)
}

variable "availability_zones" {
  type = list(string)
}

variable "ami_id" {
  type        = string
}

variable "instance_type" {
  type = string
}

variable "bucket_name" {
  type = string
}
variable "instance_name" {
  type    = string
  default = "webserver"
}

variable "alb_name" {
  type = string
}

variable "target_group_name" {
  type = string
}
variable "http_port" {
  type = string
}
variable "ssh_port" {
  type = string
}
