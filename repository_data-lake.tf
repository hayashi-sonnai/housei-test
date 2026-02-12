module "datalake" {
  source = "./modules/github_repository"
  name   = "datalake"
  topics = ["ht"]
}

module "datalake-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "datalake-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "datalake-terraform" {
  source       = "./modules/github_repository"
  name         = "datalake-terraform"
  issue_labels = local.infra_default_issue_labels
}
