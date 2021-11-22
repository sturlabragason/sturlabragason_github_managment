 ########################################
 ####    sturlabragason.github.io    ####
 ########################################

resource "github_repository" "sturlabragason_github_io" {
  name        = "sturlabragason.github.io"
  description = "My CV as web page."
  visibility = "public"
  auto_init = true
  homepage_url = "https://sturlabragason.github.io/"
  license_template = "gpl-3.0"
  pages {
    source {
      branch = "main"
      path   = "/"
    }
  }
}

data "github_repository_file" "sturlabragason" {
  repository          = github_repository.sturlabragason.name
  branch              = "main"
  file                = "README.md"
}

resource "github_repository_file" "sturlabragason_github_io_readme" {
  repository          = github_repository.sturlabragason_github_io.name
  branch              = "main"
  file                = "index.html"
  content             = replace(replace("${data.github_repository_file.sturlabragason.content}", "```yaml", "<pre>"),"```","</pre>")
  commit_message      = "Managed by Terraform"
  commit_author       = "Sturla Bragason"
  commit_email        = "sturlabragason@gmail.com"
}

 ###############################################
 ####    sturlabragason_github_managment    ####
 ###############################################

data "github_repository" "sturlabragason_github_managment" {
  full_name = "sturlabragason/sturlabragason_github_managment"
}

 ##############################
 ####    sturlabragason    ####
 ##############################

resource "github_repository" "sturlabragason" {
  name    = "sturlabragason"
  description = "A repository which holds the source of my CV."
  visibility = "public"
  homepage_url = "https://sturlabragason.github.io/"
  license_template = "gpl-3.0"
}

 ########################################
 ####    terraform_state_artifact    ####
 ########################################

resource "github_repository" "terraform_state_artifact" {
  name             = "terraform_state_artifact"
  description      = "The terraform_state_artifact action is a composite action that stores your Terraform state file as an encrypted Github workflow artifact."
  visibility       = "public"
  auto_init        = true
  topics           = ["terraform"]
  homepage_url     = "https://github.com/marketplace/actions/terraform_state_artifact"
  license_template = "gpl-3.0"
}

resource "github_actions_secret" "terraform_state_artifact_pat" {
  repository       = github_repository.terraform_state_artifact.name
  secret_name      = "pat"
  plaintext_value  = var.pat
}

 ########################################
 ####    random_password_generator    ####
 ########################################

resource "github_repository" "the_sagas_randomizer" {
  name             = "the_sagas_randomizer"
  description      = "The the_sagas_randomizer action is an action that generates an random array of strings from the Icelandic Sagas."
  visibility       = "public"
  auto_init        = true
  topics           = ["encryption", "pwsh"]
  homepage_url     = "https://github.com/marketplace/actions/the_sagas_randomizer"
  license_template = "gpl-3.0"
}