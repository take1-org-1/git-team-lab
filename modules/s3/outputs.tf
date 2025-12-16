#--------------------------------------------
# s3 outputs
#--------------------------------------------
/* output "bucket_domain_name" {
  description = "s3バケットのリージョナルドメイン名"
  value       = var.enable_s3 ? aws_s3_bucket.take1_test_bucket[0].bucket_regional_domain_name : null
}
 */
