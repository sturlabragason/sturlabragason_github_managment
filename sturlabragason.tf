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
  name        = "terraform_state_artifact"
  description = "A template to keep Terraform state as a Github artifact."
  visibility = "public"
  auto_init = true
  homepage_url = "https://github.com/sturlabragason/terraform_state_artifact"
  license_template = "gpl-3.0"
}

resource "github_actions_secret" "terraform_state_artifact_pat" {
  repository       = github_repository.terraform_state_artifact.name
  secret_name      = "pat"
  plaintext_value  = var.pat
}

 ####################################
 ####    sturlabragason_xmrig    ####
 ####################################

 resource "github_repository" "sturlabragason_xmrig" {
  name        = "sturlabragason_xmrig"
  description = "A clone of xmrig with donations lowered."
  visibility = "private"
  auto_init = true
  license_template = "gpl-3.0"
}