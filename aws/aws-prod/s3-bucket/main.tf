resource "aws_s3_bucket" "cloudagentra_storage_bucket" {
  bucket        = "cloudagentra-storage-bucket-12738"
  force_destroy = false

  tags = {
    Name  = "cloudagentra-storage-bucket-12738"
    Stack = "s3-bucket"
  }
}

resource "aws_s3_bucket_versioning" "cloudagentra_storage_bucket_versioning" {
  bucket = aws_s3_bucket.cloudagentra_storage_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_public_access_block" "cloudagentra_storage_bucket_pab" {
  bucket = aws_s3_bucket.cloudagentra_storage_bucket.id

  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}