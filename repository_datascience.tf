module "datascience-iam" {
  source       = "./modules/github_repository"
  name         = "datascience-iam"
  issue_labels = local.infra_default_issue_labels
}

module "datascience-security-group" {
  source       = "./modules/github_repository"
  name         = "datascience-security-group"
  issue_labels = local.infra_default_issue_labels
}

module "dac-datadev1-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-datadev1-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "datascience-terraform" {
  source       = "./modules/github_repository"
  name         = "datascience-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "datascience-development" {
  source = "./modules/github_repository"
  name   = "datascience-development"
}

module "datascience_DOne_RACE" {
  source = "./modules/github_repository"
  name   = "datascience_DOne_RACE"
}

module "datascience_indonesia_prism3" {
  source = "./modules/github_repository"
  name   = "datascience_indonesia_prism3"
}

module "datascience-prism1" {
  source = "./modules/github_repository"
  name   = "datascience-prism1"
}

module "datascience-rundeck-workflow" {
  source = "./modules/github_repository"
  name   = "datascience-rundeck-workflow"
}

module "datascience-sagemaker-pipeline-template" {
  source = "./modules/github_repository"
  name   = "datascience-sagemaker-pipeline-template"
}

module "datascience-sagemaker-model-deploy-template" {
  source = "./modules/github_repository"
  name   = "datascience-sagemaker-model-deploy-template"
}

module "datascience-treasure-workflow" {
  source = "./modules/github_repository"
  name   = "datascience-treasure-workflow"
}
