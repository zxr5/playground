terraform {
  required_version = ">= 0.14.0"
  # If using a backend, configure it here. Example of local backend:
  backend "local" {}
}

provider "aws" {
  # Dummy provider block (if connecting to OCI as S3, you'd still use AWS S3 endpoints)
  region = "me-jeddah-1"
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  # endpoint must be overridden in the Terraform provider if desired
  # for official AWS provider usage, normally no endpoint overrides are needed,
  # but for OCI you might need a custom provider or specify "s3" backend with endpoint.
}

variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

resource "local_file" "example" {
  content  = "Hello from Terraform!"
  filename = "hello.txt"
}
