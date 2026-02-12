module "bridgehead-audi" {
  source = "./modules/github_repository"
  name   = "bridgehead-audi"
}

module "bridgehead-audi-dataform" {
  source = "./modules/github_repository"
  name   = "bridgehead-audi-dataform"
}

module "bridgehead-bsp-data-analyst" {
  source = "./modules/github_repository"
  name   = "bridgehead-bsp-data-analyst"
}

module "bridgehead-common" {
  source = "./modules/github_repository"
  name   = "bridgehead-common"
}

module "bridgehead-demo" {
  source = "./modules/github_repository"
  name   = "bridgehead-demo"
}

module "bridgehead-dev-tools" {
  source = "./modules/github_repository"
  name   = "bridgehead-dev-tools"
}

module "bridgehead-kose" {
  source = "./modules/github_repository"
  name   = "bridgehead-kose"
}

module "bridgehead-mainichi" {
  source = "./modules/github_repository"
  name   = "bridgehead-mainichi"
}

module "bridgehead-mynavi" {
  source      = "./modules/github_repository"
  name        = "bridgehead-mynavi"
  is_archived = true
}

module "bridgehead-nbn" {
  source = "./modules/github_repository"
  name   = "bridgehead-nbn"
}

module "bridgehead-rt" {
  source      = "./modules/github_repository"
  name        = "bridgehead-rt"
  is_archived = true
}

module "bridgehead-shinoken" {
  source = "./modules/github_repository"
  name   = "bridgehead-shinoken"
}

module "bridgehead-txdev-snowflake-terraform" {
  source = "./modules/github_repository"
  name   = "bridgehead-txdev-snowflake-terraform"
}

module "bridgehead-ymfg-snowflake-sql" {
  source = "./modules/github_repository"
  name   = "bridgehead-ymfg-snowflake-sql"
}

module "bridgehead-ymfg-snowflake-terraform" {
  source = "./modules/github_repository"
  name   = "bridgehead-ymfg-snowflake-terraform"
}

module "tx-ai-agent-ops" {
  source = "./modules/github_repository"
  name   = "tx-ai-agent-ops"
}

module "dac-bridgehead-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-bridgehead-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-bridgehead-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dac-bridgehead-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}
