#--------------------------------------------
# s3 bucket module
#--------------------------------------------

resource "aws_s3_bucket" "this" {
  #count  = var.enable_s3 ? 1 : 0
  bucket        = var.bucket_name
  force_destroy = true
  /*   tags = merge(var.tags, {
    Name = "${var.name_prefix}-bucket"
  })
 */
  tags = merge(
    var.common_tags,
    var.tags,
    {
      Name = "${var.name_prefix}-bucket"
    }
  )
  lifecycle {
    prevent_destroy = false
  }
}

