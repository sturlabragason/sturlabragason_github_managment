resource "github_repository" "terraform_state_artifact" {
  name        = "terraform_state_artifact"
  description = "A template to keep Terraform state as a Github artifact."
  visibility = "public"
  auto_init = true
  homepage_url = "https://github.com/sturlabragason/terraform_state_artifact"
  license_template = "gpl-3.0"
}