module "dactaiwan-addashboard" {
  source = "./modules/github_repository"
  name   = "dactaiwan-addashboard"
}

module "dactaiwan-hkdashboard" {
  source = "./modules/github_repository"
  name   = "dactaiwan-hkdashboard"
}

module "dactaiwan-tvcdashboard" {
  source = "./modules/github_repository"
  name   = "dactaiwan-tvcdashboard"
}
