terraform {
  source = "../../modules/database"
}
include "root" {
  path = find_in_parent_folders()
}

inputs = {
  mysql_root_password = file("./password.txt")
  mysql_name          = "frontend"
  mysql_instance_name = "frontend-instance"
  db_tier             = "db-f1-micro"
}
