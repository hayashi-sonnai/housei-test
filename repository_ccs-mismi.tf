module "ccs-mismi-cloud-functions" {
  source = "./modules/github_repository"
  name   = "ccs-mismi-cloud-functions"
}

module "ccs-mismi-kpi-dashboard" {
  source = "./modules/github_repository"
  name   = "ccs-mismi-kpi-dashboard"
}

module "ccs-mismi-integration" {
  source       = "./modules/github_repository"
  name         = "ccs-mismi-integration"
  issue_labels = local.infra_default_issue_labels
}
