terraform {
  source = "../../modules/backend"
}
include "root" {
  path = find_in_parent_folders()
}
dependency "database" {
  config_path = "../database"
  mock_outputs = {
    mysql_connection_name = "connection_name"
  }
}
locals {
  mysql_root_password = file("../database/password.txt")
}
// REPLACE HERE
inputs = {
  mysql_instance_name = "backend-instance"
  secret_id           = "staging-backend"
  cloudbuild_name     = "staging-backend"
  github_tag          = "^staging-"
  enviroment          = <<EOF
DATABASE_URL=mysql://root:${local.mysql_root_password}@localhost/backend?socket=/cloudsql/${dependency.database.outputs.mysql_connection_name}
${file("./env.txt")}
EOF
}
