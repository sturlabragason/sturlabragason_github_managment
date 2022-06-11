########################################
####    sturlabragason.github.io    ####
########################################

resource "github_repository" "sturlabragason_github_io" {
  name             = "sturlabragason.github.io"
  description      = "My CV as web page."
  visibility       = "public"
  auto_init        = true
  homepage_url     = "https://sturlabragason.github.io/"
  license_template = "gpl-3.0"
  pages {
    source {
      branch = "main"
      path   = "/"
    }
  }
}

data "github_repository_file" "sturlabragason" {
  repository = github_repository.sturlabragason.name
  branch     = "main"
  file       = "README.md"
}

resource "github_repository_file" "sturlabragason_github_io_readme" {
  repository = github_repository.sturlabragason_github_io.name
  branch     = "main"
  file       = "index.html"
  content = replace(
    replace(
      replace(
        "${data.github_repository_file.sturlabragason.content}", "```yaml", "<pre>"
      )
      , "```", "</pre>"
    ), <<EOF
<center>

| Repository | Status |
|--|--|
| [`sturlabragason/sturlabragason_github_managment`](https://github.com/sturlabragason/sturlabragason_github_managment) | [![Setup and run Terraform](https://github.com/sturlabragason/sturlabragason_github_managment/actions/workflows/terraform.yml/badge.svg)](https://github.com/sturlabragason/sturlabragason_github_managment/actions/workflows/terraform.yml)   |
| [`sturlabragason/terraform_state_artifact`](https://github.com/sturlabragason/terraform_state_artifact) | [![Terraform State Artifact](https://github.com/sturlabragason/terraform_state_artifact/actions/workflows/terraform.yml/badge.svg)](https://github.com/sturlabragason/terraform_state_artifact/actions/workflows/terraform.yml)   |

</center>
    EOF
    , ""
  )
  commit_message = "Managed by Terraform"
  commit_author  = "Sturla Bragason"
  commit_email   = "sturlabragason@gmail.com"
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
  name             = "sturlabragason"
  description      = "A repository which holds the source of my CV."
  visibility       = "public"
  homepage_url     = "https://sturlabragason.github.io/"
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

########################################
####      quoth_the_vikings         ####
########################################

resource "github_repository" "quoth_the_vikings" {
  name             = "quoth_the_vikings"
  description      = "The quoth_the_vikings action is an action that plucks a random sentence from one the Icelandic Sagas."
  visibility       = "public"
  auto_init        = true
  topics           = ["encryption", "pwsh"]
  homepage_url     = "https://github.com/marketplace/actions/quoth_the_vikings"
  license_template = "gpl-3.0"
}


#########################################
####    art_portfolio    ####
#########################################

resource "github_repository" "art_portfolio" {
  name        = "art_portfolio"
  description = "art_portfolio web page"
  visibility  = "private"

  pages {
    source {
      branch = "main"
    }
  }
}

#####################################
####    terraform_rest_module    ####
#####################################

resource "github_repository" "terraform_rest_module" {
  name        = "terraform_rest_module"
  description = "terraform_rest_module"
  visibility  = "private"
}


resource "random_password" "terraform_rest_module_encryptionkey" {
  length = 16
}

resource "github_actions_secret" "terraform_rest_module_secret" {
  repository      = github_repository.terraform_rest_module.name
  secret_name     = "encryptionkey"
  plaintext_value = random_password.terraform_rest_module_encryptionkey.result
}

#########################
####    metatopia    ####
#########################


resource "github_repository" "metatopia" {
  name        = "metatopia"
  description = "metatopia"
  visibility  = "private"
}


#######################################
####    sturlabragason_skipulag    ####
#######################################

resource "github_repository" "sturlabragason_skipulag" {
  name        = "sturlabragason_skipulag"
  description = "sturlabragason_skipulag"
  visibility  = "private"
}
################################
####    terraform_tricks    ####
################################

resource "github_repository" "terraform_tricks" {
  name             = "terraform_tricks"
  description      = "terraform_tricks"
  visibility       = "public"
  auto_init        = true
  topics           = ["terraform"]
  license_template = "gpl-3.0"
}

#################################################
####    terraform_cloud_github_connection    ####
#################################################


resource "github_repository" "terraform_cloud_github_connection" {
  name        = "terraform_cloud_workspaces"
  description = "N/A"
  visibility  = "private"
  auto_init   = true
  topics      = ["terraform"]
}


#################################################
####    terraform_cloud_github_connection_public    ####
#################################################


resource "github_repository" "terraform_cloud_github_connection_public" {
  name             = "terraform_cloud_github_connection"
  description      = "The terraform_cloud_github_connection action is an action that connects your Github Repository to your Terraform Cloud."
  visibility       = "public"
  auto_init        = true
  topics           = ["terraform"]
  license_template = "gpl-3.0"
}

#######################################
####    terraform_avd    ####
#######################################

resource "github_repository" "terraform_avd" {
  name        = "terraform_avd"
  description = "terraform_avd"
  visibility  = "private"
}

#######################################
####    terraform_gh_bootstrap    ####
#######################################

resource "github_repository" "terraform_gh_bootstrap" {
  name        = "terraform_gh_bootstrap"
  description = "terraform_gh_bootstrap"
  visibility  = "private"
}

#######################################
####    github_workflow_apis    ####
#######################################

resource "github_repository" "github_workflow_apis" {
  name        = "github_workflow_apis"
  description = "github_workflow_apis"
}

#######################################
####    terraform_backstage    ####
#######################################

resource "github_repository" "terraform_backstage" {
  name        = "terraform_backstage"
  description = "terraform_backstage"
  visibility  = "public"
}

#######################################
####    rsync_action    ####
#######################################

resource "github_repository" "rsync_action" {
  name        = "rsync_action"
  description = "rsync_action"
  visibility  = "public"
}

