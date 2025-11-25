terraform {
  backend "s3" {
    bucket         = "faa-backend-tf"   # Your S3 bucket name
    key            = "prod/terraform.tfstate"      # Path within the bucket
    region         = "us-west-2"                   # AWS region
    encrypt        = true                          # Enable encryption
  }
}

