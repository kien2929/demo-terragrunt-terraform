terraform {
  extra_arguments "conditional_vars" {
    commands = [
      "apply",
      "plan",
      "import",
      "push",
      "refresh"
    ]
    required_var_files = [
      "${get_parent_terragrunt_dir()}/common-var.tfvars"
    ]
  }
}
locals {
  common = read_terragrunt_config("${get_parent_terragrunt_dir()}/common.hcl")
}
inputs = {
  service_account = jsondecode(file("service-account.json"))
}

generate = local.common.generate
