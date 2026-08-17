output "target_group_arn" {
  value = aws_lb_target_group.web.arn
}

output "dns_name" {
  value = aws_lb.this.dns_name
}