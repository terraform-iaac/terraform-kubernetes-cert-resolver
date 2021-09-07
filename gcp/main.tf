module "secret_tls" {
  source    = "../"
  crt       = data.http.crt.body
  key       = data.http.key.body
  tls_name  = var.tls_name
  namespace = var.namespace
}