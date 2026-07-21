provider "aws" {
  region = "us-east-1"
}

resource "aws_ecr_repository" "api_repo" {
  name                 = "k8s-python-api"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}