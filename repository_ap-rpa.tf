module "ap-rpa" {
  source = "./modules/github_repository"
  name   = "ap-rpa"
}

module "ap-rpa-n8n" {
  source      = "./modules/github_repository"
  name        = "ap-rpa-n8n"
  is_archived = true
}

module "ap-rpa-tools" {
  source = "./modules/github_repository"
  name   = "ap-rpa-tools"
}

module "ap-rpa-practice" {
  source = "./modules/github_repository"
  name   = "ap-rpa-practice"
}
