variable "namespace" {
  type        = list(string)
  description = "(Optional) Namespaces for access to this tls"
  default = [
    "default",
  ]
}
variable "tls_name" {
  type        = string
  description = "(Required) Tls name"
}
variable "crt" {
  type = string
}
variable "key" {
  type = string
}