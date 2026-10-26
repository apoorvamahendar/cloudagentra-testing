output "bucket_id" {
  description = "The name (ID) of the S3 bucket."
  value       = aws_s3_bucket.cloudagentra_storage_bucket.id
}

output "bucket_arn" {
  description = "The ARN of the S3 bucket."
  value       = aws_s3_bucket.cloudagentra_storage_bucket.arn
}

output "bucket_region" {
  description = "The AWS region where the S3 bucket was created."
  value       = aws_s3_bucket.cloudagentra_storage_bucket.region
}

output "versioning_status" {
  description = "The versioning status of the S3 bucket."
  value       = aws_s3_bucket_versioning.cloudagentra_storage_bucket_versioning.versioning_configuration[0].status
}