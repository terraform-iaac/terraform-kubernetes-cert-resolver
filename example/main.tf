# GCP
module "tls" {
  source = "git::https://github.com/greg-solutions/terraform_k8s_certificate_resolver.git//gcp?ref=v1.1.0"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}

# AWS
module "tls" {
  source = "git::https://github.com/greg-solutions/terraform_k8s_certificate_resolver.git//aws?ref=v1.1.0"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}

# Without Bucket
module "tls" {
  source = "git::https://github.com/greg-solutions/terraform_k8s_certificate_resolver.git?ref=v1.1.0"
  tls_name = "wildcart.general"
  crt = var.crt
  key = var.key
  namespace = ["default","jenkins","dev"]
}