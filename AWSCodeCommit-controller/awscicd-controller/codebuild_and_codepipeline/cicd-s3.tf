resource "aws_s3_bucket" "codepipeline_artifacts" {
  bucket = var.ctrlpipe_s3_bucket
} 