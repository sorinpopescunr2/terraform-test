terraform {
#   required_version = "< 1.1.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  backend "local" {
    path = "my_local_backend/state.tfstate"
  }
}

# providers can have required variables themselves (ie. provider.aws.region)
provider "aws" {
  region = "orice"
}

resource "aws_iam_user" "user" {
  name = "${var.prefix}_${var.iam_user_name}"
  tags = merge(
    var.additional_tags,
    {
      Source: var.restag
    },
  )
}

resource "aws_iam_access_key" "user" {
  user = aws_iam_user.user.name
}

resource "aws_s3_bucket" "bucket" {
  bucket = "${var.prefix}-complex-fast-bucket"

  tags = merge(
    var.additional_tags,
    {
      Name = var.bucket_tag_name,
      Source = var.restag
    }
  )
}

resource "aws_iam_user_policy" "user_policy" {
  name = "${var.prefix}_ImageBuilderAccess"
  user = aws_iam_user.user.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        "Effect" : "Allow",
        "Action" : "s3:*",
        "Resource" : aws_s3_bucket.bucket.arn
      }
    ]
  })
}
