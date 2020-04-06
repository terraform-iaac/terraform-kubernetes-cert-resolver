module "tls" {
  source = "../"
  bucket = "ssl-storage"
  path_crt = "general/certificate.crt"
  path_key = "general/private.key"
  tls_name = "wildcart.general"
  namespace = ["default","jenkins","dev"]
}