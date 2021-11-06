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
  content             = replace(replace("${data.github_repository_file.sturlabragason.content}", "```yaml", "<pre style=\"color:lime;\">"),"```","</pre>")
  commit_message      = "Managed by Terraform"
  commit_author       = "Sturla Bragason"
  commit_email        = "sturlabragason@gmail.com"
}