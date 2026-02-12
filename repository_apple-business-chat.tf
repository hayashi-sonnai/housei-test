module "applebc" {
  source      = "./modules/github_repository"
  name        = "applebc"
  is_archived = true
}

module "applebc-api" {
  source      = "./modules/github_repository"
  name        = "applebc-api"
  is_archived = true
}

module "applebc-console" {
  source      = "./modules/github_repository"
  name        = "applebc-console"
  is_archived = true
}

module "applebc-ddl" {
  source      = "./modules/github_repository"
  name        = "applebc-ddl"
  is_archived = true
}

module "applebc-notifications" {
  source      = "./modules/github_repository"
  name        = "applebc-notifications"
  is_archived = true
}

module "applebc-notification-functions" {
  source      = "./modules/github_repository"
  name        = "applebc-notification-functions"
  is_archived = true
}

module "applebc-reporter" {
  source      = "./modules/github_repository"
  name        = "applebc-reporter"
  is_archived = true
}

module "applebc-terraform" {
  source       = "./modules/github_repository"
  name         = "applebc-terraform"
  is_archived  = true
  issue_labels = local.infra_default_issue_labels
}

module "applebc-uploads" {
  source      = "./modules/github_repository"
  name        = "applebc-uploads"
  is_archived = true
}

module "applebc-webhook" {
  source      = "./modules/github_repository"
  name        = "applebc-webhook"
  is_archived = true
}
