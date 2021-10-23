output "server_ip" {
  value = aws_eip.static_ip.public_ip
}

output "instance_id" {
  value = aws_instance.web.id
}

output "sg_id" {
  value = aws_security_group.web.id
}

output "web_loadbalancer_url" {
  value = aws_elb.web.dns_name
}
