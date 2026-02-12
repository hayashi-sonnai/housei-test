module "astrars-bootstrap-webpack" {
  source = "./modules/github_repository"
  name   = "astrars-bootstrap-webpack"
}

module "astrars-central-api" {
  source = "./modules/github_repository"
  name   = "astrars-central-api"
}

module "astrars-data-gate" {
  source = "./modules/github_repository"
  name   = "astrars-data-gate"
}

module "astrars-font-awesome-webpack2" {
  source = "./modules/github_repository"
  name   = "astrars-font-awesome-webpack2"
}

module "astrars-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "astrars-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "astrars-iam" {
  source       = "./modules/github_repository"
  name         = "astrars-iam"
  issue_labels = local.infra_default_issue_labels
}

module "astrars-lambda" {
  source = "./modules/github_repository"
  name   = "astrars-lambda"
}

module "astrars-local-environment" {
  source = "./modules/github_repository"
  name   = "astrars-local-environment"
}

module "astrars-migration" {
  source = "./modules/github_repository"
  name   = "astrars-migration"
}

module "astrars-ope-tools" {
  source = "./modules/github_repository"
  name   = "astrars-ope-tools"
}

module "astrars-route53" {
  source       = "./modules/github_repository"
  name         = "astrars-route53"
  issue_labels = local.infra_default_issue_labels
}

module "astrars-scala-downloader" {
  source = "./modules/github_repository"
  name   = "astrars-scala-downloader"
}

module "astrars-sign-control-center" {
  source = "./modules/github_repository"
  name   = "astrars-sign-control-center"
}

module "astrars-sign-engine-go" {
  source = "./modules/github_repository"
  name   = "astrars-sign-engine-go"
}

module "astrars-sign-engine-ts" {
  source = "./modules/github_repository"
  name   = "astrars-sign-engine-ts"
}

module "astrars-signage-planner" {
  source = "./modules/github_repository"
  name   = "astrars-signage-planner"
}

module "astrars-stress-test" {
  source = "./modules/github_repository"
  name   = "astrars-stress-test"
}

module "astrars-terraform" {
  source       = "./modules/github_repository"
  name         = "astrars-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "astrars-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "astrars-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}
