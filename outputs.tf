output "id" {
  value = kubernetes_secret.tls[0].metadata[0].name
}