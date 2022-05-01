terraform {
  required_providers {
    github = {
      source = "integrations/github"
    }
    random = {
      source = "hashicorp/random"
    }
    tfe = {
      source = "hashicorp/tfe"
    }
  }
}

provider "github" {
  token = var.pat
  owner = "sturlabragason"
}

provider "tfe" {
  token = var.tfe
}