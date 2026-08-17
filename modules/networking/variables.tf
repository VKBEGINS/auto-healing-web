variable "name" {
  description = "Resource name."
  type        = string
}

variable "vpc_cidr" {
  description = "VPC CIDR."
  type        = string
}

variable "public_subnet_cidrs" {
  description = "Subnet CIDRs."
  type        = list(string)
}

variable "common_tags" {
  description = "Common tags."
  type        = map(string)
}