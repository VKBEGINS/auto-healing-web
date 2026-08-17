# auto-healing-web

Terraform deployment of a highly available AWS web tier.

## Architecture

- AWS Application Load Balancer
- EC2 Auto Scaling Group
- Two EC2 instances
- Two Availability Zones
- NGINX
- Terraform

## Why AWS

AWS was selected because of its strong Terraform support and experience with EC2, ALB and Auto Scaling.

## Requirements

- Terraform
- AWS CLI
- AWS credentials

## Deploy

Initialize Terraform:

```bash
terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply


