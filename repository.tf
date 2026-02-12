locals {
  infra_default_issue_labels = [
    {
      name        = "Manual Change"
      description = "Terraformリソースを手動更新した際のパラメータ等を記録したIssue"
    }
  ]
}

module "dac-admin" {
  source = "./modules/github_repository"
  name   = "dac-admin"
}

module "dac-aws-iam" {
  source       = "./modules/github_repository"
  name         = "dac-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "it-aws-packer" {
  source = "./modules/github_repository"
  name   = "it-aws-packer"
}

module "it-dac-route53" {
  source       = "./modules/github_repository"
  name         = "it-dac-route53"
  issue_labels = local.infra_default_issue_labels
}

module "m1-iam" {
  source       = "./modules/github_repository"
  name         = "m1-iam"
  issue_labels = local.infra_default_issue_labels
}

module "m1-route53" {
  source       = "./modules/github_repository"
  name         = "m1-route53"
  issue_labels = local.infra_default_issue_labels
}

module "postmaster" {
  source      = "./modules/github_repository"
  name        = "postmaster"
  is_archived = true
}

module "slack-bot" {
  source = "./modules/github_repository"
  name   = "slack-bot"
}

module "ts" {
  source = "./modules/github_repository"
  name   = "ts"
}

module "fastly-membership" {
  source       = "./modules/github_repository"
  name         = "fastly-membership"
  issue_labels = local.infra_default_issue_labels
}

module "fastly-setting" {
  source       = "./modules/github_repository"
  name         = "fastly-setting"
  issue_labels = local.infra_default_issue_labels
}

module "heroku-bot" {
  source = "./modules/github_repository"
  name   = "heroku-bot"
}

module "adh-dac-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-dac-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-parent-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-parent-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pb-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-pb-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-brother-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-pii-brother-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-brother-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "adh-pii-brother-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-dmm-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-pii-dmm-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-dmm-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "adh-pii-dmm-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-kao-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-pii-kao-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-mynavi-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-pii-mynavi-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "adh-pii-nissan-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "adh-pii-nissan-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "amazon-mc-iam" {
  source       = "./modules/github_repository"
  name         = "amazon-mc-iam"
  issue_labels = local.infra_default_issue_labels
}

module "amazon-mc-terraform" {
  source       = "./modules/github_repository"
  name         = "amazon-mc-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "audienceone-ai-agent-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "audienceone-ai-agent-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "avatar-gate-aws-domain" {
  source       = "./modules/github_repository"
  name         = "avatar-gate-aws-domain"
  issue_labels = local.infra_default_issue_labels
}

module "avatar-gate-aws-iam" {
  source       = "./modules/github_repository"
  name         = "avatar-gate-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "aws-log-archive-terraform" {
  source = "./modules/github_repository"

  name         = "aws-log-archive-terraform"
  visibility   = "private"
  is_archived  = false
  issue_labels = local.infra_default_issue_labels
}

module "aws-organization-terraform" {
  source       = "./modules/github_repository"
  name         = "aws-organization-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "aws-organizations-audit-iam" {
  source       = "./modules/github_repository"
  name         = "aws-organizations-audit-iam"
  issue_labels = local.infra_default_issue_labels
}

module "aws-organizations-audit-terraform" {
  source       = "./modules/github_repository"
  name         = "aws-organizations-audit-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "aws-organizations-log-archive-iam" {
  source       = "./modules/github_repository"
  name         = "aws-organizations-log-archive-iam"
  issue_labels = local.infra_default_issue_labels
}

module "aws-organizations-security-tooling-iam" {
  source       = "./modules/github_repository"
  name         = "aws-organizations-security-tooling-iam"
  issue_labels = local.infra_default_issue_labels
}

module "aws-organizations-security-tooling-terraform" {
  source       = "./modules/github_repository"
  name         = "aws-organizations-security-tooling-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "aws-shared-resource-terraform" {
  source       = "./modules/github_repository"
  name         = "aws-shared-resource-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "bq-police-slack-notifier" {
  source = "./modules/github_repository"
  name   = "bq-police-slack-notifier"
}

module "dac-aws-sso-iam" {
  source = "./modules/github_repository"

  name         = "dac-aws-sso-iam"
  visibility   = "private"
  is_archived  = false
  issue_labels = local.infra_default_issue_labels
}

module "dac-esys-backlog-mcp-server" {
  source = "./modules/github_repository"
  name   = "dac-esys-backlog-mcp-server"
}

module "dac-gcp-organization" {
  source = "./modules/github_repository"

  name         = "dac-gcp-organization"
  visibility   = "private"
  is_archived  = false
  issue_labels = local.infra_default_issue_labels
}

module "dac-ggl-promotion-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-ggl-promotion-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-infra-common-github-actions" {
  source     = "./modules/github_repository"
  name       = "dac-infra-common-github-actions"
  visibility = "internal"
}

module "dac-infra-common-terraform-modules" {
  source     = "./modules/github_repository"
  name       = "dac-infra-common-terraform-modules"
  visibility = "internal"
}

module "dac-infra-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-infra-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-infra-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dac-infra-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "dac-infra-pr-listing" {
  source = "./modules/github_repository"
  name   = "dac-infra-pr-listing"
}

module "dac-infra-sandbox-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-infra-sandbox-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-infra-tools" {
  source = "./modules/github_repository"
  name   = "dac-infra-tools"
}

module "dac-liftone-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-liftone-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-marketing-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-marketing-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-solution-service-site-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-solution-service-site-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-techdev0-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-techdev0-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-terraform-state-admin" {
  source       = "./modules/github_repository"
  name         = "dac-terraform-state-admin"
  issue_labels = local.infra_default_issue_labels
}

module "dac-rookie-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dac-rookie-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "daconsortium-github-io" {
  source = "./modules/github_repository"
  name   = "daconsortium.github.io"
}

module "dm-ga4-analytics-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dm-ga4-analytics-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dm-ga4-analytics-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dm-ga4-analytics-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "ds-collaborative-research-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "ds-collaborative-research-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "dx-training-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dx-training-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "engageone-aws-domain" {
  source       = "./modules/github_repository"
  name         = "engageone-aws-domain"
  issue_labels = local.infra_default_issue_labels
}

module "engageone-aws-iam" {
  source       = "./modules/github_repository"
  name         = "engageone-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "feed-sftp-terraform" {
  source = "./modules/github_repository"

  name         = "feed-sftp-terraform"
  visibility   = "private"
  is_archived  = false
  issue_labels = local.infra_default_issue_labels
}

module "for-jira-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "for-jira-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "forredash-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "forredash-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "fy25-teamdevelopment-omnisgate-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "fy25-teamdevelopment-omnisgate-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "fy25-teamdevelopment-omnisgate-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "fy25-teamdevelopment-omnisgate-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "gcp-organization-terraform" {
  source       = "./modules/github_repository"
  name         = "gcp-organization-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "gcp-usage-notifier" {
  source = "./modules/github_repository"
  name   = "gcp-usage-notifier"
}

module "geocording-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "geocording-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "ggl-ads-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "ggl-ads-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "ggl-ads-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "ggl-ads-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "gglads-spider-tool-gcp-terraform" {
  source = "./modules/github_repository"
  name   = "gglads-spider-tool-gcp-terraform"
}

module "github-membership" {
  source       = "./modules/github_repository"
  name         = "github-membership"
  visibility   = "internal"
  issue_labels = local.infra_default_issue_labels
}

module "github-private" {
  source = "./modules/github_repository"
  name   = ".github-private"
}

module "infra-github-repository-settings" {
  source       = "./modules/github_repository"
  name         = "infra-github-repository-settings"
  issue_labels = local.infra_default_issue_labels
}

module "haruyama-mierukun-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "haruyama-mierukun-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "hdi-lookerstudio-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "hdi-lookerstudio-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "hdyone-tx-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "hdyone-tx-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "i-dac-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "i-dac-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "irep-ads-data-hub-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "irep-ads-data-hub-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "irepdatafoundation-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "irepdatafoundation-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "irepdatafoundation-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "irepdatafoundation-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "it-ansible" {
  source = "./modules/github_repository"
  name   = "it-ansible"
}

module "it-sandbox-aws-iam" {
  source       = "./modules/github_repository"
  name         = "it-sandbox-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "it-ssm-ansible" {
  source = "./modules/github_repository"

  name        = "it-ssm-ansible"
  visibility  = "private"
  is_archived = false
}

module "jal-chatbot-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "jal-chatbot-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "jira-report-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "jira-report-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "jira-sheet-report-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "jira-sheet-report-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "jutaku-sandbox-aws-iam" {
  source       = "./modules/github_repository"
  name         = "jutaku-sandbox-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "keep-reservation-aws-iam" {
  source       = "./modules/github_repository"
  name         = "keep-reservation-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "lat-aws-iam" {
  source       = "./modules/github_repository"
  name         = "lat-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "lat-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "lat-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "ldh-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "ldh-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "ldh-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "ldh-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "m1-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "m1-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "m1-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "m1-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "mackerel-metric-poster" {
  source = "./modules/github_repository"

  name        = "mackerel-metric-poster"
  visibility  = "private"
  is_archived = false
}

module "meta-aa-dac-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "meta-aa-dac-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "meta-aa-dac-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "meta-aa-dac-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "meta-aa-global-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "meta-aa-global-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "meta-aa-global-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "meta-aa-global-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "mgmt-data-hub-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "mgmt-data-hub-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "mgmt-data-hub-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "mgmt-data-hub-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "mtc-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "mtc-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "myberyl-aws-iam" {
  source       = "./modules/github_repository"
  name         = "myberyl-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "myberyl-cdp-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "myberyl-cdp-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "myberyl-cdp-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "myberyl-cdp-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "nearshore-sandbox-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "nearshore-sandbox-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "nt-sandbox-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "nt-sandbox-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "one-cross-data-platform-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "one-cross-data-platform-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "one-cross-data-platform-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "one-cross-data-platform-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "one-specific-data-analysis-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "one-specific-data-analysis-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "one-specific-data-analysis-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "one-specific-data-analysis-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}



module "paypay-dx-vertexai-poc-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "paypay-dx-vertexai-poc-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "pb-bi-aws-iam" {
  source       = "./modules/github_repository"
  name         = "pb-bi-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "pb-bi-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "pb-bi-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "renovate-config" {
  source     = "./modules/github_repository"
  name       = "renovate-config"
  visibility = "public"
}

module "route53-aggregation-aws-iam" {
  source       = "./modules/github_repository"
  name         = "route53-aggregation-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "sansan-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "sansan-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "siem-aws-iam" {
  source       = "./modules/github_repository"
  name         = "siem-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "siem-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "siem-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "smartnews-dcr-aws-iam" {
  source       = "./modules/github_repository"
  name         = "smartnews-dcr-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "solution-infra-aws-iam" {
  source       = "./modules/github_repository"
  name         = "solution-infra-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "solution-infra-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "solution-infra-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "solution-site-analysis-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "solution-site-analysis-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dac-infra-dashoboard" {
  source       = "./modules/github_repository"
  name         = "dac-infra-dashoboard"
  issue_labels = local.infra_default_issue_labels
}

module "dac-infra-dashboard-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dac-infra-dashboard-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "synthetics-monitoring-setting" {
  source = "./modules/github_repository"

  name         = "synthetics-monitoring-setting"
  visibility   = "private"
  is_archived  = false
  issue_labels = local.infra_default_issue_labels
}

module "tbwa-dify-poc-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "tbwa-dify-poc-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "tdtraining-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "tdtraining-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "tdtraining-iam" {
  source = "./modules/github_repository"

  name         = "tdtraining-iam"
  visibility   = "private"
  is_archived  = false
  issue_labels = local.infra_default_issue_labels
}

module "tdtraining-route53" {
  source       = "./modules/github_repository"
  name         = "tdtraining-route53"
  issue_labels = local.infra_default_issue_labels
}

module "template-repository" {
  source = "./modules/github_repository"

  name        = "template-repository"
  visibility  = "private"
  is_archived = false
}

module "the-maestro-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "the-maestro-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "the-maestro-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "the-maestro-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "tiktok-dcr-aws-iam" {
  source       = "./modules/github_repository"
  name         = "tiktok-dcr-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "tokyo-chatbot-service-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "tokyo-chatbot-service-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "tratag-aws-iam" {
  source       = "./modules/github_repository"
  name         = "tratag-aws-iam"
  issue_labels = local.infra_default_issue_labels
}

module "tratag-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "tratag-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "tx-ai-agent-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "tx-ai-agent-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "tx-owned-solution-api-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "tx-owned-solution-api-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "infra-playground" {
  source = "./modules/github_repository"
  name   = "infra-playground"
}

module "ec-one-dashboard-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "ec-one-dashboard-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}
