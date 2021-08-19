variable "aws_reg" {
    type = string
    default = "us-west-1"
}

variable "s3_bucket_name" {
    type = string
    description = "name of this bucket"
    default = "drake-random-bucket"
}

variable "common_tags" {
    type = map(string)
    description = "(optional) describe your variable"
    default = {
        project = "terraform"
    }
}