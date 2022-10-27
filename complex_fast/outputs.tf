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

output "fixed_value_string_01" {
  value = "FIXED_01_updated"
}

output "fixed_value_string_02" {
  value = "FIXED_02"
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

output "prefix01" {
  value = var.prefix
}

output "prefix02" {
  value = var.prefix
}

output "prefix03" {
  value = var.prefix
}

output "prefix04" {
  value = var.prefix
}


output "prefix05" {
  value = var.prefix
}

output "prefix07" {
  value = var.prefix
}
