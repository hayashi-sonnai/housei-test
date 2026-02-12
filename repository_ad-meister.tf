module "admeister-serverless" {
  source = "./modules/github_repository"
  name   = "admeister-serverless"
}

module "admeister-dev" {
  source = "./modules/github_repository"
  name   = "admeister-dev"
}

module "istyle-dev-ad-meister" {
  source = "./modules/github_repository"
  name   = "istyle-dev-ad-meister"
}

module "ad-meister-sgk-dev" {
  source = "./modules/github_repository"
  name   = "ad-meister-sgk-dev"
}

module "ad-meister-mfd-dev" {
  source = "./modules/github_repository"
  name   = "ad-meister-mfd-dev"
}

module "ad-meister-dev" {
  source = "./modules/github_repository"
  name   = "ad-meister-dev"
}
