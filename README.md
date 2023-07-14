# terraform-aws-module-s3

Create by terraform module S3

## Usage
---
### Create S3 "Terraform-State-Backend"
---
#### main.tf

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
#### variables.tf

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
#### terraform.tf
```hcl
terraform {
  required_version = ">= 0.15.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.20.1"
    }
  }
}
provider "aws" {
  region = var.region
}
```

#### terraform.tfvars
```hcl
region         = "ap-northeast-2"
s3_bucket      = "test-terraform-state-backend-ygcho"
s3_acl         = "private"
dynamodb_table = "test-terraform-state-locks"

tags = {
  "CreatedByTerraform" = "true",
  "purpose"            = "TEST",
  "resource"           = "S3",
  "owner"              = "YGCHO"
}
```