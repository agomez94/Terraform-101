resource "aws_s3_bucket" "backend" {
  bucket = "${var.default_tags.env}-bucket"
}

# adding because terraform does not support versioning and will be used for state files
resource "aws_s3_bucket_versioning" "backend" {
  bucket = aws_s3_bucket.backend.id
  versioning_configuration {
    status = "Enabled"
  }
}

# # Information for the bucket policy
# data "aws_iam_policy_document" "backend" {
#   statement {
#     sid = "PublicAccess"
#     principals {
#       type        = "AWS"
#       identifiers = ["*"]
#     }
#     actions = [
#       "s3:*"
#     ]
#     resources = [
#       aws_s3_bucket.backend.arn, "${aws_s3_bucket.backend.arn}/*"
#     ]
#   }

# }

# #S3 bucket policy
# resource "aws_s3_bucket_policy" "backend" {
#   bucket = aws_s3_bucket.backend.id
#   policy = data.aws_iam_policy_document.backend.json
# }