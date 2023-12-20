output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = ""
}

output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
}

output "remote_state_bucket" {
  value = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value = aws_s3_bucket.remote-state.arn
}

output "instance_web_public_ips" {
  value = aws_instance.web.*.public_ip
}

output "instance_web_names" {
  value = join(",", aws_instance.web.*.tags.Name)
}

output "instance_web_arn" {
  value = join(",", aws_instance.web.*.arn)
}

output "instance_this_arns" {
  value = aws_instance.this[*].arn
}

output "instance_this_names" {
  value = [for k, v in aws_instance.this : k >= v.tags.Name]
}

output "extensions" {
  value = local.file_extensions
}
