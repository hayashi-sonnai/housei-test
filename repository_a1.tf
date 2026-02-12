module "a1-phinx" {
  source = "./modules/github_repository"
  name   = "a1-phinx"
  topics = ["ht"]
}

module "audienceone-minidmp-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "audienceone-minidmp-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-minidmp-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-minidmp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-route53" {
  source       = "./modules/github_repository"
  name         = "audienceone-route53"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-security-group" {
  source       = "./modules/github_repository"
  name         = "audienceone-security-group"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-datadog-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-datadog-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-gcp-cloudfunctions" {
  source       = "./modules/github_repository"
  name         = "audienceone-gcp-cloudfunctions"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-aws-iam" {
  source       = "./modules/github_repository"
  name         = "audienceone-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "bernoulli" {
  source = "./modules/github_repository"
  name   = "bernoulli"
  topics = ["ht"]
}

module "dedekind" {
  source = "./modules/github_repository"
  name   = "dedekind"
  topics = ["ht"]
}

module "euclid" {
  source = "./modules/github_repository"
  name   = "euclid"
  topics = ["ht"]
}

module "euclid-forwarder" {
  source = "./modules/github_repository"
  name   = "euclid-forwarder"
  topics = ["ht"]
}

module "germain" {
  source = "./modules/github_repository"
  name   = "germain"
  topics = ["ht"]
}

module "lagrange" {
  source = "./modules/github_repository"
  name   = "lagrange"
  topics = ["ht"]
}

module "navier" {
  source = "./modules/github_repository"
  name   = "navier"
  topics = ["ht"]
}

module "Plumber" {
  source = "./modules/github_repository"
  name   = "Plumber"
  topics = ["ht"]
}

module "Plumber-Model" {
  source = "./modules/github_repository"
  name   = "Plumber-Model"
  topics = ["ht"]
}

module "poincare" {
  source = "./modules/github_repository"
  name   = "poincare"
  topics = ["ht"]
}

module "privacy-dashboard" {
  source = "./modules/github_repository"
  name   = "privacy-dashboard"
  topics = ["ht"]
}

module "stokes" {
  source = "./modules/github_repository"
  name   = "stokes"
  topics = ["ht"]
}

module "sugarbeets" {
  source = "./modules/github_repository"
  name   = "sugarbeets"
  topics = ["ht"]
}

module "thales" {
  source = "./modules/github_repository"
  name   = "thales"
  topics = ["ht"]
}

module "thales-aggregator" {
  source = "./modules/github_repository"
  name   = "thales-aggregator"
  topics = ["ht"]
}

module "thales-forwarder" {
  source = "./modules/github_repository"
  name   = "thales-forwarder"
  topics = ["ht"]
}

module "thales-proxy" {
  source = "./modules/github_repository"
  name   = "thales-proxy"
  topics = ["ht"]
}

module "weil" {
  source = "./modules/github_repository"
  name   = "weil"
  topics = ["ht"]
}

module "weil-docs" {
  source = "./modules/github_repository"
  name   = "weil-docs"
  topics = ["ht"]
}

module "whitehead" {
  source = "./modules/github_repository"
  name   = "whitehead"
  topics = ["ht"]
}

module "plumber-wf" {
  source = "./modules/github_repository"
  name   = "plumber-wf"
  topics = ["ht"]
}

module "euler" {
  source = "./modules/github_repository"
  name   = "euler"
  topics = ["ht"]
}

module "privacy-dashboard-terraform" {
  source       = "./modules/github_repository"
  name         = "privacy-dashboard-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "fourier" {
  source = "./modules/github_repository"
  name   = "fourier"
  topics = ["ht"]
}

module "vennel" {
  source = "./modules/github_repository"
  name   = "vennel"
  topics = ["ht"]
}

module "boole" {
  source = "./modules/github_repository"
  name   = "boole"
  topics = ["ht"]
}

module "gauss" {
  source = "./modules/github_repository"
  name   = "gauss"
  topics = ["ht"]
}

module "audienceone-ansible" {
  source = "./modules/github_repository"
  name   = "audienceone-ansible"
}

module "gauss-cache" {
  source = "./modules/github_repository"
  name   = "gauss-cache"
  topics = ["ht"]
}

module "a1-monitoring" {
  source = "./modules/github_repository"
  name   = "a1-monitoring"
  topics = ["ht"]
}

module "a1-log-import" {
  source = "./modules/github_repository"
  name   = "a1-log-import"
  topics = ["ht"]
}

module "a1-mcp-lambda" {
  source = "./modules/github_repository"
  name   = "a1-mcp-lambda"
  topics = ["ht"]
}

module "a1-mcp-server" {
  source = "./modules/github_repository"
  name   = "a1-mcp-server"
  topics = ["ht"]
}

module "a1-bq-log-import" {
  source = "./modules/github_repository"
  name   = "a1-bq-log-import"
  topics = ["ht"]
}

module "plumber-wrench" {
  source = "./modules/github_repository"
  name   = "plumber-wrench"
  topics = ["ht"]
}

module "a1-scala-steward" {
  source = "./modules/github_repository"
  name   = "a1-scala-steward"
  topics = ["ht"]
}

module "euclid-manifests" {
  source = "./modules/github_repository"
  name   = "euclid-manifests"
  topics = ["ht"]
}

module "audienceone-twitter-cleanroom-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-twitter-cleanroom-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "a1-twitter-cleanroom" {
  source = "./modules/github_repository"
  name   = "a1-twitter-cleanroom"
  topics = ["ht"]
}

module "audienceone-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "audienceone-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-hc-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-hc-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "a1-bq-report-api" {
  source = "./modules/github_repository"
  name   = "a1-bq-report-api"
  topics = ["ht"]
}

module "a1-customtag" {
  source = "./modules/github_repository"
  name   = "a1-customtag"
  topics = ["ht"]
}

module "a1-carrier-ip-crawler" {
  source = "./modules/github_repository"
  name   = "a1-carrier-ip-crawler"
  topics = ["ht"]
}

module "a1-documents" {
  source = "./modules/github_repository"
  name   = "a1-documents"
  topics = ["ht"]
}

module "a1-ui-bq-common-lambda" {
  source = "./modules/github_repository"
  name   = "a1-ui-bq-common-lambda"
  topics = ["ht"]
}

module "a1-ui-package" {
  source = "./modules/github_repository"
  name   = "a1-ui-package"
  topics = ["ht"]
}

module "grisha" {
  source = "./modules/github_repository"
  name   = "grisha"
  topics = ["ht"]
}

module "plumber-cloudfunctions" {
  source = "./modules/github_repository"
  name   = "plumber-cloudfunctions"
  topics = ["ht"]
}

module "plumber-bigquery-udf" {
  source = "./modules/github_repository"
  name   = "plumber-bigquery-udf"
  topics = ["ht"]
}

module "a1-fourkeys" {
  source = "./modules/github_repository"
  name   = "a1-fourkeys"
  topics = ["ht"]
}

module "a1-gam-curator" {
  source = "./modules/github_repository"
  name   = "a1-gam-curator"
  topics = ["ht"]
}

module "plumber-cloudrun" {
  source = "./modules/github_repository"
  name   = "plumber-cloudrun"
  topics = ["ht"]
}

module "plumber-api-gateway" {
  source = "./modules/github_repository"
  name   = "plumber-api-gateway"
  topics = ["ht"]
}

module "vermeer" {
  source = "./modules/github_repository"
  name   = "vermeer"
  topics = ["ht"]
}

module "a1-bq-schema" {
  source = "./modules/github_repository"
  name   = "a1-bq-schema"
  topics = ["ht"]
}

module "audienceone-gcp-domain" {
  source       = "./modules/github_repository"
  name         = "audienceone-gcp-domain"
  issue_labels = local.infra_default_issue_labels
}

module "euclid-gke" {
  source = "./modules/github_repository"
  name   = "euclid-gke"
  topics = ["ht"]
}

module "thales-gke" {
  source = "./modules/github_repository"
  name   = "thales-gke"
  topics = ["ht"]
}

module "a1-workflow-federation" {
  source = "./modules/github_repository"
  name   = "a1-workflow-federation"
  topics = ["ht"]
}

module "a1-stokes-to-lambda-ai" {
  source = "./modules/github_repository"
  name   = "a1-stokes-to-lambda-ai"
  topics = ["ht"]
}
