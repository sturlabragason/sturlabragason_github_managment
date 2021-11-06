terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
      owner   = "sturlabragason"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = var.pat
}