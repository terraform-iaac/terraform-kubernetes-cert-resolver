# GCP
module "tls_gcp" {
  source = "terraform-iaac/cert-resolver/kubernetes//gcp"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}

# AWS
module "tls_aws" {
  source = "terraform-iaac/cert-resolver/kubernetes//aws"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}

# Without Bucket
module "tls" {
  source = "terraform-iaac/cert-resolver/kubernetes"
  tls_name = "wildcart.general"
  crt = var.crt
  key = var.key
  namespace = ["default","jenkins","dev"]
}