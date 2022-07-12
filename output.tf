# Terraform AWS Module S3
# Output
output "region" {
    description = "AWS Region"
    value = var.region
}

output "s3_bucket_name" {
    description = "AWS S3 Bucket Name"
    value = aws_s3_bucket.this.bucket
}

output "dynamodb_table" {
    description = "AWS DynamoDB Table Name"
    value = aws_dynamodb_table.this.name
}

output "kms_key" {
    description = "AWS KMS KEY"
    value = aws_kms_key.this.arn
}
