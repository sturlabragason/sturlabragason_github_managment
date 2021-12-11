terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }
  }
}

# Configure the GitHub Provider
provider "github" {
    token = var.pat
    owner   = "sturlabragason"
}