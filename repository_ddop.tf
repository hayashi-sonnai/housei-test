module "ddop-iam" {
  source       = "./modules/github_repository"
  name         = "ddop-iam"
  issue_labels = local.infra_default_issue_labels
}

module "ddop-terraform" {
  source       = "./modules/github_repository"
  name         = "ddop-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "ddop-adid_publisher" {
  source = "./modules/github_repository"
  name   = "ddop-adid_publisher"
}

module "ddop-dar-tag-publisher" {
  source = "./modules/github_repository"
  name   = "ddop-dar-tag-publisher"
}

module "ddop-dcm_tag_publisher" {
  source = "./modules/github_repository"
  name   = "ddop-dcm_tag_publisher"
}

module "ddop-flash_talking" {
  source = "./modules/github_repository"
  name   = "ddop-flash_talking"
}

module "ddop-gtm_json2xlsx" {
  source = "./modules/github_repository"
  name   = "ddop-gtm_json2xlsx"
}

module "ddop-nissan-tag-validation" {
  source = "./modules/github_repository"
  name   = "ddop-nissan-tag-validation"
}

module "ddop-tracking" {
  source = "./modules/github_repository"
  name   = "ddop-tracking"
}

module "ddop-utilities" {
  source = "./modules/github_repository"
  name   = "ddop-utilities"
}

module "ddop-vast-inspector" {
  source = "./modules/github_repository"
  name   = "ddop-vast-inspector"
}

module "ddop-ytm2gtm" {
  source = "./modules/github_repository"
  name   = "ddop-ytm2gtm"
}
