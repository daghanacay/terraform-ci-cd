variable "region" {
    description = "Choose aws region"
    type = string
    default = "ap-southeast-2"
}

provider "aws" {
    region="${var.region}"
}