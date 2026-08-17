output "load_balancer_dns" {
  description = "Load balancer DNS."
  value       = module.load_balancer.dns_name
}

output "load_balancer_url" {
  description = "Load balancer URL."
  value       = "http://${module.load_balancer.dns_name}"
}

output "autoscaling_group_name" {
  description = "Auto Scaling Group name."
  value       = module.compute.autoscaling_group_name
}