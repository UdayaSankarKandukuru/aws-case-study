provider "aws" {
  region  = "${var.region}"
  profile = "160071257600_PowerUserPlusRole"
}

variable "region" {
  description = "AWS Deployment region.."
  default = "us-east-1"
}