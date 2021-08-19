provider "aws" {
    region = var.aws_reg
}

resource "random_pet" "this" {
    length = 2
}

module "s3" {
    source = "terraform-aws-modules/s3-bucket/aws"
    
    bucket = var.s3_bucket_name
    acl = "private"
    versioning = {
        enabled = true
    }
    tags = var.common_tags
}