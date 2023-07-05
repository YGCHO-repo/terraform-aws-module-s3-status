# terraform-aws-module-s3

Create by terraform module S3

## Usage

### Create S3 "Terraform-State-Backend"

main.tf

```hcl
module "terraform-state-backend" {
  source = "git::https://github.com/YGCHO-repo/terraform-aws-module-s3.git"

    region    = var.region
    s3_bucket = var.s3_bucket
    s3_acl    = var.s3_acl

    dynamodb_table = var.dynamodb_table

    tags = var.tags
}
```

variables.tf

```hcl
variable "region" {
  description = "AWS Region name"
  type        = string
}

variable "region" {
  type    = string
  default = ""
}

variable "s3_bucket" {
  type    = string
  default = ""
}

variable "s3_acl" {
  type    = string
  default = ""
}

variable "dynamodb_table" {
  type    = string
  default = ""
}

variable "tags" {
  type = map(string)
}
```