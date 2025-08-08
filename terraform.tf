terraform {
  # backend "local" {
  #   path = "terraform.tfstate"
  # }

  # backend "s3" {
  #   bucket = "rshcm-terraform-bucket-mc"
  #   key    = "prod/aws_infra"
  #   region = "us-east-1"
  # }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "michaelchen-learn-terraform"
    workspaces {
      name = "my-aws-app"
    }
  }

  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
    http = {
      source  = "hashicorp/http"
      version = "2.1.0"
    }
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = ">= 4.0.0"
    }
  }
}