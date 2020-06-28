# Terraform GitLab Project

Terraform module to manage GitLab projects

## Requirements

### GitLab Personal Access Token

You will need to create a [GitLab Personal Access Token](https://gitlab.com/profile/personal_access_tokens) and select `api` under Scopes.

## Usage

```bash
module "project" {
  source  = "mrlesmithjr/project/gitlab"
  version = "0.1.1"
  # insert the 2 required variables here
}
```

## Inputs

| Name                                             | Description                                                                           | Default | Required |
| ------------------------------------------------ | ------------------------------------------------------------------------------------- | :-----: | :------: |
| approvals_before_merge                           | Number of merge request approvals required for merging                                |    0    |    no    |
| container_registry_enabled                       | Enable container registry for the project                                             |  true   |    no    |
| default_branch                                   | The default branch for the project                                                    | master  |    no    |
| gitlab_token                                     | This is the GitLab personal access token                                              |    -    |   yes    |
| initialize_with_readme                           | Create master branch with first commit containing a README.md file                    |  false  |    no    |
| issues_enabled                                   | Enable issue tracking for the project                                                 |  true   |    no    |
| lfs_enabled                                      | Enable LFS for the project                                                            |  true   |    no    |
| merge_requests_enabled                           | Enable merge requests for the project                                                 |  true   |    no    |
| name                                             | The name of the project                                                               |    -    |   yes    |
| only_allow_merge_if_all_discussions_are_resolved | Set to true if you want allow merges only if all discussions are resolved             |  false  |    no    |
| only_allow_merge_if_pipeline_succeeds            | Set to true if you want allow merges only if a pipeline succeeds                      |  false  |    no    |
| pipelines_enabled                                | Enable pipelines for the project                                                      |  true   |    no    |
| shared_runners_enabled                           | Enable shared runners for this project                                                |  true   |    no    |
| snippets_enabled                                 | Enable snippets for the project                                                       |  true   |    no    |
| visibility_level                                 | Set to public to create a public project. Valid values are private, internal, public. | private |    no    |
| wiki_enabled                                     | Enable wiki for the project                                                           |  true   |    no    |

## Outputs

| Name             | Description                                                            |
| ---------------- | ---------------------------------------------------------------------- |
| http_url_to_repo | URL that can be provided to git clone to clone the repository via HTTP |
| id               | Integer that uniquely identifies the project within the gitlab install |
| runners_token    | Registration token to use during runner setup                          |
| ssh_url_to_repo  | URL that can be provided to git clone to clone the repository via SSH  |
| web_url          | URL that can be used to find the project in a browser                  |

## License

MIT

## Author Information

Larry Smith Jr.

- [@mrlesmithjr](https://twitter.com/mrlesmithjr)
- [mrlesmithjr@gmail.com](mailto:mrlesmithjr@gmail.com)
- [http://everythingshouldbevirtual.com](http://everythingshouldbevirtual.com)
