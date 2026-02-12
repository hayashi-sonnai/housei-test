module "aaas-business-data-analysis-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "aaas-business-data-analysis-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "aaas-business-data-analysis-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "aaas-business-data-analysis-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}
