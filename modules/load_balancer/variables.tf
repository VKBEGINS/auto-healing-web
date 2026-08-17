variable "name" {
  description = "Resource name."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs."
  type        = list(string)
}

variable "security_group_id" {
  description = "ALB security group."
  type        = string
}

variable "common_tags" {
  description = "Common tags."
  type        = map(string)
}