variable "name" {
  description = "Resource name."
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type."
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs."
  type        = list(string)
}

variable "security_group_id" {
  description = "Web security group."
  type        = string
}

variable "target_group_arn" {
  description = "Target group ARN."
  type        = string
}

variable "common_tags" {
  description = "Common tags."
  type        = map(string)
}