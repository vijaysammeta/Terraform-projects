output "vpc_id" {
  value = aws_vpc.my_vpc.id
}

output "ec2_public_ips" {
  value = [
    aws_instance.webserver1.public_ip,
    aws_instance.webserver2.public_ip
  ]
}

output "loadbalancerdns" {
  value = aws_lb.myalb.dns_name
}

output "s3_bucket_name" {
  value = aws_s3_bucket.example.bucket
}
