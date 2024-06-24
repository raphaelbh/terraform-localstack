# Terraform + Localstack

[![Project Status](https://img.shields.io/static/v1?label=project%20status&message=complete&color=success&style=flat-square)](#)

Create aws resources using localstack


## Requirements
[![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://registry.terraform.io/)
[![aws](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/)

## Installation
```bash
# aws cli - config (~/.aws/config)
[default]
region = us-east-1
output = json
endpoint_url=http://localhost:4566

# aws cli - credentials (~/.aws/credentials)
[default]
aws_access_key_id = localstack
aws_secret_access_key = localstack
```

```bash
# localstack
$ docker-compose up -d --build
```

```bash
# terraform
$ (cd main && terraform init)
$ (cd main && terraform plan)
$ (cd main && terraform apply -auto-approve)
```

## Test
```bash
$ aws s3 ls
```

## Utils
```bash
# providers.tf
# add s3_use_path_style = true
# add skip_credentials_validation = true
# add skip_metadata_api_check = true
# add skip_requesting_account_id = true
# add localstack endpoints_url for services

provider "aws" {
  access_key    = var.access_key
  secret_key    = var.secret_access
  region        = var.region

  s3_use_path_style             = true
  skip_credentials_validation   = true
  skip_metadata_api_check       = true
  skip_requesting_account_id    = true

  endpoints {
    apigateway      = var.endpoints_url
    apigatewayv2    = var.endpoints_url
    cloudformation  = var.endpoints_url
    cloudwatch      = var.endpoints_url
    dynamodb        = var.endpoints_url
    ec2             = var.endpoints_url
    es              = var.endpoints_url
    elasticache     = var.endpoints_url
    firehose        = var.endpoints_url
    iam             = var.endpoints_url
    kinesis         = var.endpoints_url
    lambda          = var.endpoints_url
    rds             = var.endpoints_url
    redshift        = var.endpoints_url
    route53         = var.endpoints_url
    s3              = var.endpoints_url
    secretsmanager  = var.endpoints_url
    ses             = var.endpoints_url
    sns             = var.endpoints_url
    sqs             = var.endpoints_url
    ssm             = var.endpoints_url
    stepfunctions   = var.endpoints_url
    sts             = var.endpoints_url
  }
}
```

## Tech Stack

[![docker](https://img.shields.io/badge/Docker-2CA5E0?style=for-the-badge&logo=docker&logoColor=white)](https://www.docker.com/)
[![terraform](https://img.shields.io/badge/Terraform-7B42BC?style=for-the-badge&logo=terraform&logoColor=white)](https://registry.terraform.io/)
[![aws](https://img.shields.io/badge/Amazon_AWS-FF9900?style=for-the-badge&logo=amazonaws&logoColor=white)](https://aws.amazon.com/)

## Reference

- https://docs.aws.amazon.com/cli/latest/reference/
- https://registry.terraform.io/
- https://www.localstack.cloud/

## Feedback

If you have any feedback, please contact me at raphaeldias.ti@gmail.com

[![github](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/raphaelbh)
[![linkedin](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](https://www.linkedin.com/in/raphaelbh/)
