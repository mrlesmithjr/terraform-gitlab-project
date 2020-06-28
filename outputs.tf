output "http_url_to_repo" {
  value = gitlab_project.project.http_url_to_repo
}

output "id" {
  value = gitlab_project.project.id
}

output "runners_token" {
  value = gitlab_project.project.runners_token
}

output "ssh_url_to_repo" {
  value = gitlab_project.project.ssh_url_to_repo
}

output "web_url" {
  value = gitlab_project.project.web_url
}
