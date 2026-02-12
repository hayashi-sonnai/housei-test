resource "github_repository_collaborator" "privacy-dashboard_lighthousebot" {
  repository = module.privacy-dashboard.github_repository.id
  username   = "lighthousebot"
  permission = "push"
}
