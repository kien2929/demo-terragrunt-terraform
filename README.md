# Terragrunt - Terraform
## Requiredment
- Install [Terraform](https://www.terraform.io/downloads)
- Install [Terragrunt](https://terragrunt.gruntwork.io/docs/getting-started/install/)

## Setup
- Change Directory to the target Enviroment(Staging, Production)
```sh
cd staging
```
- Copy any files name `NAME.example.TYPE` to `NAME.TYPE` and fill `sensitive data`
## Deploy
- All services
```sh
terragrunt run-all apply
```
- Any services (Ex: backend services)
```sh
cd backend
```
```sh
terragrunt apply
```

### References
Terraform: https://www.terraform.io/
<br>
Terragrunt: https://terragrunt.gruntwork.io/

