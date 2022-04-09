// ===== Terraform Initialisations =====
# Pulls providers from Terraform registry on `terraform init`
terraform {
  required_providers {
    heroku = {
      source  = "heroku/heroku"
      version = "5.0.2"
    }
  }
}

// ===== Variables and Constants =====
# Note: These are set in the `terraform.tfvars` file
variable "heroku_account_email" {}
variable "heroku_api_key" {}
variable "heroku_app_name" {}

// ===== Provider Configurations =====
provider "heroku" {
  email   = var.heroku_account_email
  api_key = var.heroku_api_key
}

// ===== Resources =====
# Create an app (Heroku's terminology for a project)
resource "heroku_app" "hello-world" {
  name   = var.heroku_app_name
  region = "us"
  stack  = "container"
}

# Build and deploy the Hello World app
resource "heroku_build" "hello-world" {
  app_id = heroku_app.hello-world.id
  source {
    path = "."
  }
}