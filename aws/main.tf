module "secret_tls" {
  source = "../"
  crt = data.aws_s3_bucket_object.crt.body
  key = data.aws_s3_bucket_object.key.body
  tls_name = var.tls_name
  namespace = var.namespace
}