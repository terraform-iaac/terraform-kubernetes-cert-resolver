data "aws_s3_bucket_object" "crt" {
  bucket = var.bucket
  key    = var.path_crt
}
data "aws_s3_bucket_object" "key" {
  bucket = var.bucket
  key    = var.path_key
}