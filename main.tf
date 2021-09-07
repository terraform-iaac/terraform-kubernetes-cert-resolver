resource "kubernetes_secret" "tls" {
  count = length(var.namespace)

  type = "kubernetes.io/tls"
  metadata {
    name      = var.tls_name
    namespace = element(var.namespace, count.index)
  }
  data = {
    "tls.crt" = var.crt
    "tls.key" = var.key
  }
}