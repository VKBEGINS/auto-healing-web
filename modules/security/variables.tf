variable "name" {
  description = "Resource name."
  type        = string
}

variable "vpc_id" {
  description = "VPC ID."
  type        = string
}

variable "common_tags" {
  description = "Common tags."
  type        = map(string)
}