variable "access_key" {
  description = "AWS access key"
  type = string
  default = "localstack"
}

variable "secret_access" {
  description = "AWS secret key"
  type = string
  default = "localstack"
}

variable "region" {
  description = "AWS Region"
  type = string
  default = "us-east-1"
}

variable "endpoints_url" {
  description = "URL for AWS endpoints"
  type = string
  default = "http://localhost:4566" # For localstack
}