module "dactaiwan-jpapp-admin" {
  source = "./modules/github_repository"
  name   = "dactaiwan-jpapp-admin"
}

module "dactaiwan-jpapp-api" {
  source = "./modules/github_repository"
  name   = "dactaiwan-jpapp-api"
}

module "dactaiwan-jpapp-ios" {
  source = "./modules/github_repository"
  name   = "dactaiwan-jpapp-ios"
}
