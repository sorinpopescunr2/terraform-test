output "user_access_key_id" {
  value = aws_iam_access_key.user.id
}

output "user_access_key_secret" {
  value = aws_iam_access_key.user.secret
  description = "IAM user ARN"
  sensitive = true
}

output "fixed_value_string" {
  value = "FIXED"
}

output "fixed_value_complex" {
  value = [{
    internal = 123
    external = 1234
    protocol = "TCP"
  }]
}

output "user_creds" {
  value = {
    id = aws_iam_access_key.user.id
    secret = aws_iam_access_key.user.secret
  }

  sensitive = true
}

output "user_arn" {
  value = aws_iam_user.user.arn
  description = "IAM user ARN"
}

output "bucket_arn" {
  value = aws_s3_bucket.bucket.arn
}

output "docker_ports" {
  value = var.docker_ports
}

output "restag" {
  value = var.restag
}

output "prefix" {
  value = var.prefix
}

output "prefix01" {
  value = aws_iam_user.user
}
output "prefix02" {
  value = aws_iam_user.user
}
output "prefix03" {
  value = aws_iam_user.user
}
output "prefix04" {
  value = aws_iam_user.user
}
output "prefix05" {
  value = aws_iam_user.user
}
output "prefix06" {
  value = aws_iam_user.user
}
output "prefix07" {
  value = aws_iam_user.user
}
output "prefix08" {
  value = aws_iam_user.user
}
output "prefix09" {
  value = aws_iam_user.user
}
output "prefix10" {
  value = aws_iam_user.user
}