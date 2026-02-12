module "dxsoldev-sandbox-iam" {
  source       = "./modules/github_repository"
  name         = "dxsoldev-sandbox-iam"
  issue_labels = local.infra_default_issue_labels
}
