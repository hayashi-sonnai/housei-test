module "datalake-for-dac-bi" {
  source = "./modules/github_repository"

  name        = "datalake-for-dac-bi"
  visibility  = "private"
  is_archived = false
}


module "dacbi-ads-bi-suite" {
  source = "./modules/github_repository"
  name   = "dacbi-ads-bi-suite"
}

module "dacbi-quaras-bi-using-terraform" {
  source       = "./modules/github_repository"
  name         = "dacbi-quaras-bi-using-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "dacbi-mitsubishielectric-bi-using-terraform" {
  source       = "./modules/github_repository"
  name         = "dacbi-mitsubishielectric-bi-using-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "dacbi-xoneconnect" {
  source = "./modules/github_repository"
  name   = "dacbi-xoneconnect"
}

module "dacbi-wise-transformer" {
  source = "./modules/github_repository"
  name   = "dacbi-wise-transformer"
}

module "dacbi-taglesscrm" {
  source = "./modules/github_repository"
  name   = "dacbi-taglesscrm"
}

module "dacbi-taglesscrm-token-gen" {
  source = "./modules/github_repository"
  name   = "dacbi-taglesscrm-token-gen"
}

module "dacbi-h2o-bi" {
  source = "./modules/github_repository"
  name   = "dacbi-h2o-bi"
}

module "dacbi-stellantis-bi" {
  source = "./modules/github_repository"
  name   = "dacbi-stellantis-bi"
}

module "dacbi-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dacbi-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dacbi-yakult-bi" {
  source = "./modules/github_repository"
  name   = "dacbi-yakult-bi"
}

module "dacbi-done-smc-bi" {
  source = "./modules/github_repository"
  name   = "dacbi-done-smc-bi"
}

module "dacbi-asako-adh" {
  source = "./modules/github_repository"
  name   = "dacbi-asako-adh"
}

module "dacbi-data-infra-utils" {
  source = "./modules/github_repository"
  name   = "dacbi-data-infra-utils"
}

module "dacbi-tbs-tiktok-api" {
  source = "./modules/github_repository"
  name   = "dacbi-tbs-tiktok-api"
}

module "dacbi-google-cloud-cicd-sample" {
  source = "./modules/github_repository"
  name   = "dacbi-google-cloud-cicd-sample"
}

module "dacbi-dataform-sample" {
  source = "./modules/github_repository"
  name   = "dacbi-dataform-sample"
}

module "dacbi-sony-music-solutions" {
  source = "./modules/github_repository"
  name   = "dacbi-sony-music-solutions"
}

module "dacbi-hike-sales-channels-master" {
  source = "./modules/github_repository"
  name   = "dacbi-hike-sales-channels-master"
}
