# terraform-hello-world

A simple Hello World server deployed onto [Heroku](https://heroku.com) using [Terraform](https://terraform.io).

## File Structure
```ml
.
├─ Dockerfile - Dockerfile to run a Node.js Hello World app
├─ heroku.yml - Heroku configuration to run container
├─ README.md - This file!
├─ terraform.tf — Terraform configuration
├─ terraform.tfvars — Terraform variables go here
```

## Quickstart

To begin, populate `terraform.tfvars` with the following variables:
```javascript
heroku_account_email = "your_heroku_account_email"
heroku_api_key = "your_heroku_api_key"
heroku_app_name = "your_heroku_app_name"
```

Then run `terraform init` and `terraform apply`.

You'll then be able to hop onto `http://$HEROKU_APP_NAME.herokuapp.com` and see your application running.

You can run `terraform destroy` to remove the application.

## Resources
Here are several resources to extend the functionality of this simple example.

- [Terraform Registry for Other Providers and Resources](https://registry.terraform.io)
- [Setting Terraform Variables on the Command Line](https://www.terraform.io/language/values/variables#variables-on-the-command-line)