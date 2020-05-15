variable "namespace" {
  type = list(string)
  description = "(Optional) Namespaces for access to this tls"
  default = [
    "default",
  ]
}
variable "tls_name" {
  type = string
  description = "(Required) Name for tls"
}
variable "bucket" {
  type = string
  description = "(Required) Google Storage Bucket"
}
variable "path_crt" {
  type = string
  description = "(Required) Path to crt file on Storage Bucket"
}
variable "path_key" {
  type = string
  description = "(Required) Path to crt file on Storage Bucket"
}