output "mysql_connection_name" {
  value = google_sql_database_instance.instance.connection_name
}

output "mysql_root_password" {
  value     = google_sql_user.user.password
  sensitive = true
}

