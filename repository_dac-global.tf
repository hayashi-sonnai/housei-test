module "dac-global-dashboard-sellInall" {
  source = "./modules/github_repository"
  name   = "dac-global-dashboard-sellInall"
}

module "dac-global-ec-crawl" {
  source = "./modules/github_repository"
  name   = "dac-global-ec-crawl"
}

module "dac-global-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-global-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-global-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dac-global-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}
