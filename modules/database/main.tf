resource "google_sql_database" "database" {
  name     = var.mysql_name
  instance = google_sql_database_instance.instance.name
}

resource "google_sql_database_instance" "instance" {
  name             = var.mysql_instance_name
  region           = var.region
  database_version = "MYSQL_8_0"
  settings {
    tier = var.db_tier
  }
  deletion_protection  = "false"
}
resource "google_sql_user" "user" {
  name     = "root"
  instance = google_sql_database_instance.instance.name
}
