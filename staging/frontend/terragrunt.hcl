terraform {
  source = "../../modules/frontend"
}
include "root" {
  path = find_in_parent_folders()
}
inputs = {
  cloudrun_backend_instance_name = "cloud-build"
  secret_id                      = "staging-frontend"
  cloudbuild_name                = "staging-frontend"
  github_tag                     = "^staging-"
  enviroment                     = file("./env.txt")
  location                       = "asia-east1"
}
