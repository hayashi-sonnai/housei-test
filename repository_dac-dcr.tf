module "dacdcr-google-adh" {
  source = "./modules/github_repository"
  name   = "dacdcr-google-adh"
}

module "dacdcr-meta-aa" {
  source = "./modules/github_repository"
  name   = "dacdcr-meta-aa"
}

module "dacdcr-meta-cvlift" {
  source = "./modules/github_repository"
  name   = "dacdcr-meta-cvlift"
}

module "dacdcr-ucan-datatransfer" {
  source = "./modules/github_repository"
  name   = "dacdcr-ucan-datatransfer"
}
