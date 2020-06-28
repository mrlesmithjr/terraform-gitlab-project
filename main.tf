# Configure the GitLab Provider
provider "gitlab" {
  token   = var.gitlab_token
  version = "~> 2.10"
}

resource "gitlab_project" "project" {
  approvals_before_merge                           = var.approvals_before_merge
  container_registry_enabled                       = var.container_registry_enabled
  default_branch                                   = var.default_branch
  description                                      = var.description
  initialize_with_readme                           = var.initialize_with_readme
  issues_enabled                                   = var.issues_enabled
  lfs_enabled                                      = var.lfs_enabled
  merge_requests_enabled                           = var.merge_requests_enabled
  name                                             = var.name
  only_allow_merge_if_all_discussions_are_resolved = var.only_allow_merge_if_all_discussions_are_resolved
  only_allow_merge_if_pipeline_succeeds            = var.only_allow_merge_if_pipeline_succeeds
  pipelines_enabled                                = var.pipelines_enabled
  shared_runners_enabled                           = var.shared_runners_enabled
  snippets_enabled                                 = var.snippets_enabled
  visibility_level                                 = var.visibility_level
  wiki_enabled                                     = var.wiki_enabled
}
