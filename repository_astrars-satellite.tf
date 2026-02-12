module "astrars-data-analysis" {
  source = "./modules/github_repository"
  name   = "astrars-data-analysis"
}

module "astrars-colab" {
  source = "./modules/github_repository"
  name   = "astrars-colab"
}

module "astrars-control-center-satellite" {
  source = "./modules/github_repository"
  name   = "astrars-control-center-satellite"
}

module "astrars-data-gate-satellite" {
  source = "./modules/github_repository"
  name   = "astrars-data-gate-satellite"
}

module "astrars-sign-exapi" {
  source = "./modules/github_repository"
  name   = "astrars-sign-exapi"
}

module "astrars-sign-exdata" {
  source = "./modules/github_repository"
  name   = "astrars-sign-exdata"
}
