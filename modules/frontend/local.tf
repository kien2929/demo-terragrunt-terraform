locals {
  backend_url = data.google_cloud_run_service.backend.status[0].url
  enviroment  = <<EOF
${var.enviroment}
EVALUATION_API_BASE_URL=${local.backend_url}
  EOF
}
