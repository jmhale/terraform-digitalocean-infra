# terraform-digitalocean-infra

Main Terraform project for resources running on DigitalOcean

## Variables
| Variable Name | Type | Required |Description |
|---------------|-------------|-------------|-------------|
|`var_name`|`string`|Yes|Example variable required by the Terraform module.|

## Usage

```
module "terraform-digitalocean-infra" {
  source = "git@github.com:jmhale/terraform-digitalocean-infra.git"
}

```
## Outputs
| Output Name | Description |
|---------------|-------------|
|`output_name`|Example output produced by the Terraform module.|


---
Copyright © 2019, James Hale
