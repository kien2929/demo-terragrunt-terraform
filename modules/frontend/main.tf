resource "google_secret_manager_secret" "secret" {
  secret_id = var.secret_id
  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "secret-version" {
  secret      = google_secret_manager_secret.secret.id
  secret_data = var.enviroment
}

resource "google_cloudbuild_trigger" "cloudbuild" {
  name     = var.cloudbuild_name
  filename = "cicd/release/cloudbuild.yaml"

  github {
    owner = "kien2929"
    name  = "frontend"
    push {
      tag = var.github_tag
    }
  }
}
