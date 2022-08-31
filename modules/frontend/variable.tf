variable "secret_id" {
  description = "Secret backend id"
}
variable "enviroment" {
  description = "Enviroment of backend API"
}
variable "cloudbuild_name" {
  description = "cloud build name"
}
variable "github_tag" {
  description = "Github tag triggers"
  default     = "^v.*"
}
variable "cloudrun_backend_instance_name" {}
variable "location" {}
