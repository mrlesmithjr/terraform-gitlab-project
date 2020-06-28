variable "approvals_before_merge" {
  type        = number
  description = "Number of merge request approvals required for merging"
  default     = 0
}

variable "container_registry_enabled" {
  type        = bool
  description = "Enable container registry for the project"
  default     = true
}

variable "default_branch" {
  type        = string
  description = "The default branch for the project"
  default     = "master"
}

variable "description" {
  type        = string
  description = "A description of the project"
  default     = ""
}

variable "gitlab_token" {
  type        = string
  description = "This is the GitLab personal access token"
}

variable "initialize_with_readme" {
  type        = bool
  description = "Create master branch with first commit containing a README.md file"
  default     = false
}

variable "issues_enabled" {
  type        = bool
  description = "Enable issue tracking for the project"
  default     = true
}

variable "lfs_enabled" {
  type        = bool
  description = "Enable LFS for the project"
  default     = true
}

variable "merge_requests_enabled" {
  type        = bool
  description = "Enable merge requests for the project"
  default     = true
}

variable "name" {
  type        = string
  description = "The name of the project"
}

variable "only_allow_merge_if_all_discussions_are_resolved" {
  type        = bool
  description = "Set to true if you want allow merges only if all discussions are resolved"
  default     = false
}

variable "only_allow_merge_if_pipeline_succeeds" {
  type        = bool
  description = "Set to true if you want allow merges only if a pipeline succeeds"
  default     = false
}

variable "pipelines_enabled" {
  type        = bool
  description = "Enable pipelines for the project"
  default     = true
}

variable "shared_runners_enabled" {
  type        = bool
  description = "Enable shared runners for this project"
  default     = true
}

variable "snippets_enabled" {
  type        = bool
  description = ""
  default     = true
}

variable "visibility_level" {
  type        = string
  description = "Set to public to create a public project. Valid values are private, internal, public. Repositories are created as private by default."
  default     = "private"
}

variable "wiki_enabled" {
  type        = bool
  description = "Enable wiki for the project"
  default     = true
}
