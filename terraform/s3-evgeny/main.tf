terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">3.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}

data "aws_iam_user" "input_user" {
  count = "${var.user == "none" ? 0 : 1}"
  user_name = var.user
}

data "aws_ssm_parameter" "my-secret-token" {
  name = "my-secret-token"
}

resource "aws_s3_bucket" "bucket" {
  bucket = var.name
  force_destroy = true

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    A_NEW_TAG = "NEW TAG"
    SecretDataTag = data.aws_ssm_parameter.my-secret-token.arn
  }
}

# CREATE USER and POLICY
resource "aws_iam_policy" "policy" {
  count = "${var.user == "none" ? 0 : 1}"
  name        = "s3_access_${var.name}"
  path        = "/"
  description = "Policy to access S3 Module"

  # Terraform's "jsonencode" function converts a
  # Terraform expression result to valid JSON syntax.
  policy = jsonencode({
    Version: "2012-10-17",
    Statement: [
        {
        Effect: "Allow",
        Action: ["s3:ListBucket"],
        Resource: ["arn:aws:s3:::${var.name}"]
        },
        {
        Effect: "Allow",
        Action: [
            "s3:PutObject",
            "s3:GetObject",
            "s3:DeleteObject"
        ],
        Resource: ["arn:aws:s3:::${var.name}/*"]
        }
    ]
  })
}

resource "aws_iam_user_policy_attachment" "attachment" {  
    count = "${var.user == "none" ? 0 : 1}"
    user       = data.aws_iam_user.input_user[0].user_name 
    policy_arn = aws_iam_policy.policy[0].arn
}

output "s3_bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "s3_bucket_regional_domain_name" {
  value = aws_s3_bucket.bucket.bucket_regional_domain_name
}

output "s3_bucket_id" {
  value = aws_s3_bucket.bucket.id
}

output "s3_bucket_region" {
  value = aws_s3_bucket.bucket.region
}

output "s3_bucket_hosted_zone_id" {
  value = aws_s3_bucket.bucket.hosted_zone_id
}