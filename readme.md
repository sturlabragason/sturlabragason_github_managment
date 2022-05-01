# sturlabragason_github_managment

A repository which holds Terraform code for my Github. Uses the action [sturlabragason/terraform_state_artifact](https://github.com/marketplace/actions/terraform_state_artifact).

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 4.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.1.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | ~> 4.0 |
| <a name="provider_random"></a> [random](#provider\_random) | ~> 3.1.0 |
| <a name="provider_tfe"></a> [tfe](#provider\_tfe) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [github_actions_secret.terraform_cloud_github_connection_public](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_actions_secret.terraform_rest_module_secret](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/actions_secret) | resource |
| [github_repository.art_portfolio](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.metatopia](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.quoth_the_vikings](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.sturlabragason](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.sturlabragason_github_io](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.sturlabragason_skipulag](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_avd](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_cloud_github_connection](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_cloud_github_connection_public](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_gh_bootstrap](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_rest_module](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_state_artifact](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository.terraform_tricks](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository) | resource |
| [github_repository_file.sturlabragason_github_io_readme](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/repository_file) | resource |
| [random_password.terraform_rest_module_encryptionkey](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/password) | resource |
| [tfe_oauth_client.sturlabragason](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/oauth_client) | resource |
| [tfe_organization.sturlabragason](https://registry.terraform.io/providers/hashicorp/tfe/latest/docs/resources/organization) | resource |
| [github_repository.sturlabragason_github_managment](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repository) | data source |
| [github_repository_file.sturlabragason](https://registry.terraform.io/providers/integrations/github/latest/docs/data-sources/repository_file) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_pat"></a> [pat](#input\_pat) | n/a | `string` | n/a | yes |
| <a name="input_tfe"></a> [tfe](#input\_tfe) | n/a | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->