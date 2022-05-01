resource "tfe_organization" "sturlabragason" {
  name  = "sturlabragason"
  email = "sturlabragason@gmail.com"
}

resource "tfe_oauth_client" "sturlabragason" {
  name             = github_repository.terraform_state_artifact.name
  organization     = tfe_organization.sturlabragason.id
  api_url          = "https://api.github.com"
  http_url         = "https://github.com"
  oauth_token      = var.tfe
  service_provider = "github"
}

resource "github_actions_secret" "terraform_cloud_github_connection_public" {
  repository      = github_repository.terraform_cloud_github_connection_public.name
  secret_name     = "oauth_token_id"
  plaintext_value = tfe_oauth_client.sturlabragason.oauth_token_id
}

