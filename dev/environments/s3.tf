# ---------------------------------------------
# s3
# ---------------------------------------------

module "s3" {
  source      = "../../modules/s3"
  name_prefix = local.name_prefix
  tags        = var.tags
  common_tags = local.common_tags
  project     = var.project
  environment = var.environment
  for_each    = toset(var.bucket_names)
  bucket_name = each.value
  #allow_cloudfront_arn = module.cloudfront.distribution_arn
  /*   providers = {
    aws = aws.use-1
  } */
}

