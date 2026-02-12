module "d1-fluentd-aggregator" {
  source = "./modules/github_repository"
  name   = "d1-fluentd-aggregator"
}

module "d1-fluentd-forwarder" {
  source = "./modules/github_repository"
  name   = "d1-fluentd-forwarder"
}

module "d1-jmeter" {
  source = "./modules/github_repository"
  name   = "d1-jmeter"
}

module "d1-jmeter-server" {
  source = "./modules/github_repository"
  name   = "d1-jmeter-server"
}

module "d1-master-console" {
  source = "./modules/github_repository"
  name   = "d1-master-console"
}

module "d1-publisher-line" {
  source = "./modules/github_repository"
  name   = "d1-publisher-line"
}

module "d1-subscriber-line" {
  source = "./modules/github_repository"
  name   = "d1-subscriber-line"
}

module "d1_userdata_gateway" {
  source = "./modules/github_repository"
  name   = "d1-userdata-gateway"
  topics = ["line", "basic"]
}

module "d1_userdata_importer" {
  source = "./modules/github_repository"
  name   = "d1-userdata-importer"
  topics = ["line", "basic"]
}

module "d1-utils" {
  source = "./modules/github_repository"
  name   = "d1-utils"
}

module "d1-various-mock" {
  source = "./modules/github_repository"
  name   = "d1-various-mock"
}

module "dialogone-iam" {
  source       = "./modules/github_repository"
  name         = "dialogone-iam"
  issue_labels = local.infra_default_issue_labels
}

module "dialogone-route53" {
  source       = "./modules/github_repository"
  name         = "dialogone-route53"
  issue_labels = local.infra_default_issue_labels
}

module "dialogone-security-group" {
  source       = "./modules/github_repository"
  name         = "dialogone-security-group"
  issue_labels = local.infra_default_issue_labels
}

module "dialogone-terraform" {
  source       = "./modules/github_repository"
  name         = "dialogone-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "d1-master-console-reverse-proxy" {
  source = "./modules/github_repository"
  name   = "d1-master-console-reverse-proxy"
}

module "d1-update-scenario-segment" {
  source = "./modules/github_repository"
  name   = "d1-update-scenario-segment"
  topics = ["line", "basic"]
}

module "d1-update-segment" {
  source = "./modules/github_repository"
  name   = "d1-update-segment"
}

module "d1-update-segment-status" {
  source = "./modules/github_repository"
  name   = "d1-update-segment-status"
  topics = ["line", "basic"]
}

module "d1-line-messenger" {
  source = "./modules/github_repository"
  name   = "d1-line-messenger"
}

module "d1-dummy-proxy" {
  source = "./modules/github_repository"
  name   = "d1-dummy-proxy"
}

module "d1-segment-dataflow" {
  source = "./modules/github_repository"
  name   = "d1-segment-dataflow"
}

module "d1-segment-bigquery" {
  source = "./modules/github_repository"
  name   = "d1-segment-bigquery"
}

module "d1-rbac" {
  source = "./modules/github_repository"
  name   = "d1-rbac"
}

module "d1-marketo-proxy" {
  source = "./modules/github_repository"
  name   = "d1-marketo-proxy"
}

module "d1-wayf" {
  source = "./modules/github_repository"
  name   = "d1-wayf"
}

resource "github_branch" "d1-wayf_main" {
  repository = module.d1-wayf.github_repository.id
  branch     = "main"
}

resource "github_branch_default" "d1-wayf" {
  repository = module.d1-wayf.github_repository.name
  branch     = github_branch.d1-wayf_main.branch
}

module "d1-wayf-main" {
  source = "./modules/github_branch_protection"

  repository_id           = module.d1-wayf.github_repository.node_id
  requires_linear_history = true

  required_status_checks = {
    strict = true
    contexts = [
      "WIP",
      "build"
    ]
  }
}

module "d1-wayf-environment-branches" {
  source = "./modules/github_branch_protection"

  for_each = toset(["development", "staging", "production"])

  repository_id = module.d1-wayf.github_repository.node_id
  pattern       = "v2/${each.key}"

  required_status_checks = {
    strict   = true
    contexts = ["WIP"]
  }
}

module "d1-wayf-server" {
  source = "./modules/github_repository"
  name   = "d1-wayf-server"
  topics = ["line", "basic"]
}

module "d1-k8s-service-manifests" {
  source = "./modules/github_repository"
  name   = "d1-k8s-service-manifests"
}

module "d1-playground" {
  source = "./modules/github_repository"
  name   = "d1-playground"
}

module "d1-line-recover-friends" {
  source = "./modules/github_repository"
  name   = "d1-line-recover-friends"
  topics = ["line"]
}

module "d1-macro-handler" {
  source = "./modules/github_repository"
  name   = "d1-macro-handler"
  topics = ["line"]
}

module "d1-segment-lib" {
  source = "./modules/github_repository"
  name   = "d1-segment-lib"
  topics = ["line"]
}

module "d1-segment-server" {
  source = "./modules/github_repository"
  name   = "d1-segment-server"
  topics = ["line"]
}

module "d1-line-received-contents-handler" {
  source = "./modules/github_repository"
  name   = "d1-line-received-contents-handler"
  topics = ["line"]
}

module "d1-survey-cacher" {
  source = "./modules/github_repository"
  name   = "d1-survey-cacher"
  topics = ["line"]
}

module "d1-survey-cleaner" {
  source = "./modules/github_repository"
  name   = "d1-survey-cleaner"
  topics = ["line"]
}

module "d1-interactive-survey-cacher" {
  source = "./modules/github_repository"
  name   = "d1-interactive-survey-cacher"
  topics = ["line"]
}

module "d1-metabase" {
  source = "./modules/github_repository"
  name   = "d1-metabase"
}

module "d1-line-pnp-messenger" {
  source = "./modules/github_repository"
  name   = "d1-line-pnp-messenger"
  topics = ["line"]
}

module "d1-gcp-pubsub" {
  source = "./modules/github_repository"
  name   = "d1-gcp-pubsub"
}

module "line-event-handler-sdk" {
  source = "./modules/github_repository"
  name   = "line-event-handler-sdk"
}

module "d1-line-external-gateway" {
  source = "./modules/github_repository"
  name   = "d1-line-external-gateway"
}

module "d1-line-user-attribute-gateway" {
  source = "./modules/github_repository"
  name   = "d1-line-user-attribute-gateway"
}

module "d1-macro-cacher-batch" {
  source = "./modules/github_repository"
  name   = "d1-macro-cacher-batch"
}

module "d1-aws-maintenance-notice" {
  source = "./modules/github_repository"
  name   = "d1-aws-maintenance-notice"
}

module "d1-count-jigsaw-alert" {
  source = "./modules/github_repository"
  name   = "d1-count-jigsaw-alert"
}

module "d1-ai-prompt" {
  source = "./modules/github_repository"
  name   = "d1-ai-prompt"
  topics = ["line", "base", "custom"]
}

module "d1-custom-check-tool" {
  source = "./modules/github_repository"
  name   = "d1-custom-check-tool"
  topics = ["line", "custom"]
}

module "d1-custom-create-tracking-api" {
  source = "./modules/github_repository"
  name   = "d1-custom-create-tracking-api"
  topics = ["line", "custom"]
}

module "d1-custom-criteo-send-recommendation-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-criteo-send-recommendation-batch"
  topics = ["line", "custom"]
}

module "d1-custom-cp-api" {
  source = "./modules/github_repository"
  name   = "d1-custom-cp-api"
  topics = ["line", "custom"]
}

module "d1-custom-cp-incentive" {
  source = "./modules/github_repository"
  name   = "d1-custom-cp-incentive"
  topics = ["line", "custom"]
}

module "d1-custom-cp-utility" {
  source = "./modules/github_repository"
  name   = "d1-custom-cp-utility"
  topics = ["line", "custom"]
}

module "d1-custom-ddl-v2" {
  source = "./modules/github_repository"
  name   = "d1-custom-ddl-v2"
  topics = ["line"]
}

module "d1-custom-f1jp-web" {
  source = "./modules/github_repository"
  name   = "d1-custom-f1jp-web"
  topics = ["line", "custom"]
}

module "d1-custom-f1jp-web-api" {
  source = "./modules/github_repository"
  name   = "d1-custom-f1jp-web-api"
  topics = ["line", "custom"]
}

module "d1-custom-f1jp-web-material" {
  source = "./modules/github_repository"
  name   = "d1-custom-f1jp-web-material"
  topics = ["line", "custom"]
}

module "d1-custom-friend-list-exporter" {
  source = "./modules/github_repository"
  name   = "d1-custom-friend-list-exporter"
  topics = ["line", "custom"]
}

module "d1-custom-kao-tap-ddl" {
  source = "./modules/github_repository"
  name   = "d1-custom-kao-tap-ddl"
  topics = ["line", "custom"]
}

module "d1-custom-kao-tap-script" {
  source = "./modules/github_repository"
  name   = "d1-custom-kao-tap-script"
  topics = ["line", "custom"]
}

module "d1-custom-kirin-hometap-web" {
  source = "./modules/github_repository"
  name   = "d1-custom-kirin-hometap-web"
  topics = ["line", "custom"]
}

module "d1-custom-nissay-salesforce-transferrer" {
  source = "./modules/github_repository"
  name   = "d1-custom-nissay-salesforce-transferrer"
  topics = ["line", "custom"]
}

module "d1-custom-oreore-plugin" {
  source = "./modules/github_repository"
  name   = "d1-custom-oreore-plugin"
  topics = ["line"]
}

module "d1-custom-plugin-event-handler" {
  source = "./modules/github_repository"
  name   = "d1-custom-plugin-event-handler"
  topics = ["line"]
}

module "d1-custom-pnp-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-pnp-batch"
  topics = ["line", "custom"]
}

module "d1-custom-sendcontentsbatch" {
  source = "./modules/github_repository"
  name   = "d1-custom-sendcontentsbatch"
  topics = ["line"]
}

module "d1-custom-step-notification" {
  source = "./modules/github_repository"
  name   = "d1-custom-step-notification"
  topics = ["line", "custom"]
}

module "d1-custom-tokucha-aws-terraform" {
  source       = "./modules/github_repository"
  name         = "d1-custom-tokucha-aws-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "d1-custom-tokucha-iam" {
  source       = "./modules/github_repository"
  name         = "d1-custom-tokucha-iam"
  issue_labels = local.infra_default_issue_labels
}

module "d1-custom-tokulog-api" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-api"
  topics = ["line"]
}

module "d1-custom-tokulog-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-batch"
  topics = ["line", "custom"]
}

module "d1-custom-tokulog-export-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-export-batch"
  topics = ["line", "custom"]
}

module "d1-custom-tokulog-invest-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-invest-batch"
  topics = ["line"]
}

module "d1-custom-tokulog-migration" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-migration"
  topics = ["line"]
}

module "d1-custom-tokulog-mileage-web" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-mileage-web"
  topics = ["line", "custom"]
}

module "d1-custom-tokulog-partition-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-partition-batch"
  topics = ["line"]
}

module "d1-custom-tokulog-update-prize-setting-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-update-prize-setting-batch"
  topics = ["line"]
}

module "d1-custom-tokulog-web-api" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-web-api"
  topics = ["line"]
}

module "d1-custom-tokulog-web" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-web"
  topics = ["line"]
}

module "d1-custom-tokulog-web-contents" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-web-contents"
  topics = ["line", "custom"]
}

module "d1-custom-tokulog-web-deliverables" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-web-deliverables"
  topics = ["line", "custom"]
}

module "d1-custom-tokulog-web-ext" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-web-ext"
  topics = ["line", "custom"]
}

module "d1-custom-tokulog-web-ext-deliverables" {
  source = "./modules/github_repository"
  name   = "d1-custom-tokulog-web-ext-deliverables"
  topics = ["line", "custom"]
}

module "d1-custom-util" {
  source = "./modules/github_repository"
  name   = "d1-custom-util"
  topics = ["line", "custom"]
}

module "d1-custom-webhook-relay-plugin" {
  source = "./modules/github_repository"
  name   = "d1-custom-webhook-relay-plugin"
  topics = ["line", "custom"]
}

module "d1-list-batch" {
  source = "./modules/github_repository"
  name   = "d1-list-batch"
}

module "d1-list-tdworkflow" {
  source = "./modules/github_repository"
  name   = "d1-list-tdworkflow"
}

module "d1-macro-delete-batch" {
  source = "./modules/github_repository"
  name   = "d1-macro-delete-batch"
}

module "d1-jigsaw-assignee-changer" {
  source = "./modules/github_repository"
  name   = "d1-jigsaw-assignee-changer"
}

module "d1-line-bot-sdk-go" {
  source = "./modules/github_repository"
  name   = "d1-line-bot-sdk-go"
}

module "d1-kenkocha-event-handler" {
  source = "./modules/github_repository"
  name   = "d1-kenkocha-event-handler"
  topics = ["line"]
}

module "d1-partner-registration-api" {
  source = "./modules/github_repository"
  name   = "d1-partner-registration-api"
  topics = ["line"]
}

module "d1-snippets" {
  source = "./modules/github_repository"
  name   = "d1-snippets"
}

module "d1-survey-summary" {
  source = "./modules/github_repository"
  name   = "d1-survey-summary"
}

module "dialogone-gcp-iam" {
  source       = "./modules/github_repository"
  name         = "dialogone-gcp-iam"
  issue_labels = local.infra_default_issue_labels
}

module "d1-line-insights-collector" {
  source = "./modules/github_repository"
  name   = "d1-line-insights-collector"
}

module "d1-line-insights-summary" {
  source = "./modules/github_repository"
  name   = "d1-line-insights-summary"
}

module "d1-resource-status-visualizer" {
  source = "./modules/github_repository"
  name   = "d1-resource-status-visualizer"
}

module "d1-logger" {
  source = "./modules/github_repository"
  name   = "d1-logger"
  topics = ["d1", "line"]
}

module "d1-custom-richmenuapi" {
  source = "./modules/github_repository"
  name   = "d1-custom-richmenuapi"
  topics = ["line", "custom"]
}

module "d1-line-audience-manager" {
  source = "./modules/github_repository"
  name   = "d1-line-audience-manager"
  topics = ["line"]
}

module "d1-line-audience-register" {
  source = "./modules/github_repository"
  name   = "d1-line-audience-register"
  topics = ["line"]
}

module "d1-data-deletion-tool" {
  source = "./modules/github_repository"
  name   = "d1-data-deletion-tool"
  topics = ["sot"]
}

module "d1-delivery-manager" {
  source = "./modules/github_repository"
  name   = "d1-delivery-manager"
  topics = ["line"]
}

module "d1-check-batch-procs" {
  source = "./modules/github_repository"
  name   = "d1-check-batch-procs"
}

module "d1-jigsaw-first-action" {
  source = "./modules/github_repository"
  name   = "d1-jigsaw-first-action"
}

module "d1-line-friendship-fix-kit" {
  source = "./modules/github_repository"
  name   = "d1-line-friendship-fix-kit"
  topics = ["line"]
}

module "tokucha-point-api-route53" {
  source       = "./modules/github_repository"
  name         = "tokucha-point-api-route53"
  issue_labels = local.infra_default_issue_labels
}

module "tokucha-point-api-terraform" {
  source       = "./modules/github_repository"
  name         = "tokucha-point-api-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "d1-grep-linelogin-log" {
  source      = "./modules/github_repository"
  name        = "d1-grep-linelogin-log"
  topics      = ["sot"]
  is_archived = true
}

module "d1-line-webhook-handler" {
  source = "./modules/github_repository"
  name   = "d1-line-webhook-handler"
  topics = ["line"]
}

module "d1-management-screen-monitoring" {
  source      = "./modules/github_repository"
  name        = "d1-management-screen-monitoring"
  topics      = ["sot"]
  is_archived = true
}

module "d1-exporter-bigquery-to-s3" {
  source = "./modules/github_repository"
  name   = "d1-exporter-bigquery-to-s3"
  topics = ["line"]
}

module "d1-external-segment-server" {
  source = "./modules/github_repository"
  name   = "d1-external-segment-server"
  topics = ["line"]
}

module "d1-exporter-rds-to-s3" {
  source = "./modules/github_repository"
  name   = "d1-exporter-rds-to-s3"
  topics = ["line"]
}

module "d1-exporter-td-to-s3" {
  source = "./modules/github_repository"
  name   = "d1-exporter-td-to-s3"
  topics = ["line"]
}

module "d1-daikin-frienddata-collectbatch" {
  source = "./modules/github_repository"
  name   = "d1-daikin-frienddata-collectbatch"
  topics = ["line"]
}

module "d1-metrics-forwarder" {
  source = "./modules/github_repository"
  name   = "d1-metrics-forwarder"
}

module "d1-access-token-weekly-updater" {
  source = "./modules/github_repository"
  name   = "d1-access-token-weekly-updater"
}

module "d1-cf-error-notification" {
  source = "./modules/github_repository"
  name   = "d1-cf-error-notification"
}

module "d1-maintenance-notice-sns2slack" {
  source = "./modules/github_repository"
  name   = "d1-maintenance-notice-sns2slack"
}

module "d1-maintenance-jira-notice" {
  source = "./modules/github_repository"
  name   = "d1-maintenance-jira-notice"
}

module "d1-kirin-survey-importer" {
  source = "./modules/github_repository"
  name   = "d1-kirin-survey-importer"
}

module "d1-sot-gas" {
  source = "./modules/github_repository"
  name   = "d1-sot-gas"
}

module "d1-operation-ansible" {
  source = "./modules/github_repository"
  name   = "d1-operation-ansible"
}

module "d1-rds2s3" {
  source = "./modules/github_repository"
  name   = "d1-rds2s3"
}

module "d1-richmenuapi" {
  source = "./modules/github_repository"
  name   = "d1-richmenuapi"
}

module "d1-user-attribute-aggregator" {
  source = "./modules/github_repository"
  name   = "d1-user-attribute-aggregator"
  topics = ["line"]
}

module "d1-user-labeler" {
  source = "./modules/github_repository"
  name   = "d1-user-labeler"
  topics = ["line", "basic"]
}

module "d1-sot-test-environment" {
  source = "./modules/github_repository"
  name   = "d1-sot-test-environment"
}

module "d1-line-macro-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-macro-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-custom-jt-contents-plugin" {
  source = "./modules/github_repository"
  name   = "d1-custom-jt-contents-plugin"
  topics = ["line"]
}

module "d1-line-account-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-account-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-admin-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-admin-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-audience-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-audience-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-contents-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-contents-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-event-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-event-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-friend-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-friend-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-insight-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-insight-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-scenario-gateway" {
  source = "./modules/github_repository"
  name   = "d1-line-scenario-gateway"
  topics = ["line", "basic"]
}

module "d1-line-segment-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-segment-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-line-survey-gateway" {
  source        = "./modules/github_repository"
  name          = "d1-line-survey-gateway"
  topics        = ["line"]
  use_templates = false
}

module "d1-rds-to-scdp-gcs-batch" {
  source        = "./modules/github_repository"
  name          = "d1-rds-to-scdp-gcs-batch"
  topics        = ["line"]
  use_templates = false
}

module "d1-message-service" {
  source = "./modules/github_repository"
  name   = "d1-message-service"
}

module "d1-message-service-admin" {
  source = "./modules/github_repository"
  name   = "d1-message-service-admin"
}

module "d1-message-service-client" {
  source = "./modules/github_repository"
  name   = "d1-message-service-client"
}

module "d1-messagesend" {
  source = "./modules/github_repository"
  name   = "d1-messagesend"
}

module "d1-tracehelper" {
  source = "./modules/github_repository"
  name   = "d1-tracehelper"
}

module "d1-custom-tappiness-batch" {
  source = "./modules/github_repository"
  name   = "d1-custom-tappiness-batch"
  topics = ["line"]
}

module "d1-custom-tappiness-web" {
  source = "./modules/github_repository"
  name   = "d1-custom-tappiness-web"
  topics = ["line"]
}

module "d1-line-user-info-manager-batch" {
  source = "./modules/github_repository"
  name   = "d1-line-user-info-manager-batch"
  topics = ["line"]
}

module "d1-survey-server" {
  source = "./modules/github_repository"
  name   = "d1-survey-server"
  topics = ["line"]
}

module "d1-survey-templates" {
  source = "./modules/github_repository"
  name   = "d1-survey-templates"
  topics = ["line"]
}

module "d1-Account" {
  source = "./modules/github_repository"
  name   = "d1-Account"
}

module "d1-Ansible" {
  source = "./modules/github_repository"
  name   = "d1-Ansible"
  topics = ["basic"]
}

module "d1-anybot" {
  source = "./modules/github_repository"
  name   = "d1-anybot"
}

module "d1-Asahibeer" {
  source = "./modules/github_repository"
  name   = "d1-Asahibeer"
}

module "d1-Bucho" {
  source = "./modules/github_repository"
  name   = "d1-Bucho"
}

module "d1-channelaccesstoken" {
  source = "./modules/github_repository"
  name   = "d1-channelaccesstoken"
}

module "d1-container-scan-monitor" {
  source = "./modules/github_repository"
  name   = "d1-container-scan-monitor"
  topics = ["line", "basic"]
}

module "d1-Cony" {
  source = "./modules/github_repository"
  name   = "d1-Cony"
}

module "d1-DDL" {
  source = "./modules/github_repository"
  name   = "d1-DDL"
}

module "d1-dependency-viewer" {
  source = "./modules/github_repository"
  name   = "d1-dependency-viewer"
  topics = ["line", "basic"]
}

module "d1-EventMonitor" {
  source = "./modules/github_repository"
  name   = "d1-EventMonitor"
}

module "d1-instantwin" {
  source = "./modules/github_repository"
  name   = "d1-instantwin"
}

module "d1-InteractiveSurveySummaryBatch" {
  source = "./modules/github_repository"
  name   = "d1-InteractiveSurveySummaryBatch"
}

module "d1-InteractiveSurveyUpdateBatch" {
  source = "./modules/github_repository"
  name   = "d1-InteractiveSurveyUpdateBatch"
}

module "d1-iw-export-result" {
  source = "./modules/github_repository"
  name   = "d1-iw-export-result"
}

module "d1-iw-load-incentive" {
  source = "./modules/github_repository"
  name   = "d1-iw-load-incentive"
}

module "d1-iw-load-tester" {
  source = "./modules/github_repository"
  name   = "d1-iw-load-tester"
}

module "d1-iw-updatelotteryconfig" {
  source = "./modules/github_repository"
  name   = "d1-iw-updatelotteryconfig"
}

module "d1-James" {
  source = "./modules/github_repository"
  name   = "d1-James"
}

module "d1-JCB" {
  source = "./modules/github_repository"
  name   = "d1-JCB"
}

module "d1-JCBRedirector" {
  source = "./modules/github_repository"
  name   = "d1-JCBRedirector"
}

module "d1-JcbSalesforceBatch" {
  source = "./modules/github_repository"
  name   = "d1-JcbSalesforceBatch"
}

module "d1-Jenkins" {
  source = "./modules/github_repository"
  name   = "d1-Jenkins"
}

module "d1-JtRedirector" {
  source = "./modules/github_repository"
  name   = "d1-JtRedirector"
}

module "d1-kao-sofina" {
  source = "./modules/github_repository"
  name   = "d1-kao-sofina"
}

module "d1-kitagas" {
  source = "./modules/github_repository"
  name   = "d1-kitagas"
}

module "d1-LINEinsightReportBatch" {
  source = "./modules/github_repository"
  name   = "d1-LINEinsightReportBatch"
}

module "d1-LineLogin" {
  source = "./modules/github_repository"
  name   = "d1-LineLogin"
}

module "d1-maskerror" {
  source = "./modules/github_repository"
  name   = "d1-maskerror"
}

module "d1-mileage" {
  source = "./modules/github_repository"
  name   = "d1-mileage"
}

module "d1-mileage-ansible" {
  source = "./modules/github_repository"
  name   = "d1-mileage-ansible"
}

module "d1-mileage-api" {
  source = "./modules/github_repository"
  name   = "d1-mileage-api"
}

module "d1-mileage-batch" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch"
}

module "d1-mileage-batch-custom-report-for-morinyu" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-custom-report-for-morinyu"
}

module "d1-mileage-batch-export-apply-dump" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-export-apply-dump"
}

module "d1-mileage-batch-export-incentive-mapping" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-export-incentive-mapping"
}

module "d1-mileage-batch-export-serial-dump" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-export-serial-dump"
}

module "d1-mileage-batch-export-serial-mapping" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-export-serial-mapping"
}

module "d1-mileage-batch-importincentive" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-importincentive"
}

module "d1-mileage-batch-importserial" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-importserial"
}

module "d1-mileage-batch-report" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-report"
}

module "d1-mileage-batch-s3-file-copy" {
  source = "./modules/github_repository"
  name   = "d1-mileage-batch-s3-file-copy"
}

module "d1-mileage-bot-gateway" {
  source = "./modules/github_repository"
  name   = "d1-mileage-bot-gateway"
}

module "d1-mileage-grant-gateway" {
  source = "./modules/github_repository"
  name   = "d1-mileage-grant-gateway"
}

module "d1-mileage-grpc-if" {
  source = "./modules/github_repository"
  name   = "d1-mileage-grpc-if"
}

module "d1-mileage-scripts" {
  source = "./modules/github_repository"
  name   = "d1-mileage-scripts"
}

module "d1-mileage-shared" {
  source = "./modules/github_repository"
  name   = "d1-mileage-shared"
}

module "d1-mileage-web-admin" {
  source = "./modules/github_repository"
  name   = "d1-mileage-web-admin"
}

module "d1-mileage-web-contents" {
  source = "./modules/github_repository"
  name   = "d1-mileage-web-contents"
}

module "d1-mileage-web-user" {
  source = "./modules/github_repository"
  name   = "d1-mileage-web-user"
}

module "d1-Moon" {
  source = "./modules/github_repository"
  name   = "d1-Moon"
}

module "d1-neofirst" {
  source = "./modules/github_repository"
  name   = "d1-neofirst"
}

module "d1-PointConnect" {
  source = "./modules/github_repository"
  name   = "d1-PointConnect"
}

module "d1-Receipt-Campaign" {
  source = "./modules/github_repository"
  name   = "d1-Receipt-Campaign"
}

module "d1-receipt-campaign_resource" {
  source = "./modules/github_repository"
  name   = "d1-receipt-campaign_resource"
}

module "d1-RichmenuDefaultScheduleBatch" {
  source = "./modules/github_repository"
  name   = "d1-RichmenuDefaultScheduleBatch"
}

module "d1-RichmenuScheduleFinishBatch" {
  source = "./modules/github_repository"
  name   = "d1-RichmenuScheduleFinishBatch"
}

module "d1-RichMenuSendBatch" {
  source = "./modules/github_repository"
  name   = "d1-RichMenuSendBatch"
}

module "d1-s32suntorygcs" {
  source = "./modules/github_repository"
  name   = "d1-s32suntorygcs"
}

module "d1-s32suntorygcsKenkocha" {
  source = "./modules/github_repository"
  name   = "d1-s32suntorygcsKenkocha"
}

module "d1-Sally" {
  source = "./modules/github_repository"
  name   = "d1-Sally"
}

module "d1-sally-proxy" {
  source = "./modules/github_repository"
  name   = "d1-sally-proxy"
}

module "d1-segmentDeleteBatch" {
  source = "./modules/github_repository"
  name   = "d1-segmentDeleteBatch"
}

module "d1-semi-closed-mileage" {
  source = "./modules/github_repository"
  name   = "d1-semi-closed-mileage"
}

module "d1-SendContentsBatch" {
  source = "./modules/github_repository"
  name   = "d1-SendContentsBatch"
}

module "d1-sending" {
  source = "./modules/github_repository"
  name   = "d1-sending"
}

module "d1-stepup-instantwin-api" {
  source = "./modules/github_repository"
  name   = "d1-stepup-instantwin-api"
}

module "d1-stepup-instantwin-batch" {
  source = "./modules/github_repository"
  name   = "d1-stepup-instantwin-batch"
}

module "d1-stepup-instantwin-plugin-proxy" {
  source = "./modules/github_repository"
  name   = "d1-stepup-instantwin-plugin-proxy"
}

module "d1-stepup-instantwin-shared" {
  source = "./modules/github_repository"
  name   = "d1-stepup-instantwin-shared"
}

module "d1-subscriber-line-plugin-delivery" {
  source = "./modules/github_repository"
  name   = "d1-subscriber-line-plugin-delivery"
}

module "d1-SurveyScenarioBatch" {
  source = "./modules/github_repository"
  name   = "d1-SurveyScenarioBatch"
}

module "d1-Tohogas" {
  source = "./modules/github_repository"
  name   = "d1-Tohogas"
}

module "d1-TrackerJS" {
  source = "./modules/github_repository"
  name   = "d1-TrackerJS"
}

module "d1-Tracking" {
  source = "./modules/github_repository"
  name   = "d1-Tracking"
}

module "d1-TrackingVerification" {
  source = "./modules/github_repository"
  name   = "d1-TrackingVerification"
}

module "d1-TreasureData" {
  source = "./modules/github_repository"
  name   = "d1-TreasureData"
}

module "d1-zoff-batch" {
  source = "./modules/github_repository"
  name   = "d1-zoff-batch"
}

module "d1-zoff-line-event" {
  source = "./modules/github_repository"
  name   = "d1-zoff-line-event"
}

module "d1-zoff-salesforce" {
  source = "./modules/github_repository"
  name   = "d1-zoff-salesforce"
}

module "d1-repository-monitor" {
  source = "./modules/github_repository"
  name   = "d1-repository-monitor"
  topics = ["basic"]
}

module "d1-dydo-reporting" {
  source = "./modules/github_repository"
  name   = "d1-dydo-reporting"
  topics = ["line"]
}

module "d1-custom-training" {
  source = "./modules/github_repository"
  name   = "d1-custom-training"
  topics = ["custom"]
}

module "d1-custom-training-sample" {
  source = "./modules/github_repository"
  name   = "d1-custom-training-sample"
  topics = ["custom"]
}

module "d1-robotic-tests" {
  source = "./modules/github_repository"
  name   = "d1-robotic-tests"
  topics = ["basic"]
}

module "d1-user-manual" {
  source = "./modules/github_repository"
  name   = "d1-user-manual"
  topics = ["basic"]
}

module "d1-external-survey-server" {
  source = "./modules/github_repository"
  name   = "d1-external-survey-server"
  topics = ["line", "basic"]
}

module "d1-mission-sticker-server" {
  source = "./modules/github_repository"
  name   = "d1-mission-sticker-server"
  topics = ["line", "basic"]
}

module "d1-line-demographic-collector" {
  source = "./modules/github_repository"
  name   = "d1-line-demographic-collector"
  topics = ["line", "basic"]
}

module "dialogone-nissay-gcp-iam" {
  source = "./modules/github_repository"
  name   = "dialogone-nissay-gcp-iam"
}

module "dialogone-nissay-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dialogone-nissay-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "dialogone-secure-gcp-terraform" {
  source       = "./modules/github_repository"
  name         = "dialogone-secure-gcp-terraform"
  issue_labels = local.infra_default_issue_labels
}

module "d1-browser-survey-aggregator" {
  source = "./modules/github_repository"
  name   = "d1-browser-survey-aggregator"
  topics = ["line", "basic"]
}

module "d1-custom-kirin-hometap-web-material" {
  source = "./modules/github_repository"
  name   = "d1-custom-kirin-hometap-web-material"
  topics = ["line", "custom"]
}

module "d1-browser-survey-builder" {
  source = "./modules/github_repository"
  name   = "d1-browser-survey-builder"
  topics = ["line", "basic"]
}

module "d1-mackerel-agent-ecs" {
  source = "./modules/github_repository"
  name   = "d1-mackerel-agent-ecs"
  topics = ["basic"]
}

module "d1-sally-puppeteer" {
  source = "./modules/github_repository"
  name   = "d1-sally-puppeteer"
}

module "d1-custom-cotyjapan-membership" {
  source = "./modules/github_repository"
  name   = "d1-custom-cotyjapan-membership"
  topics = ["line", "custom"]
}

module "d1-custom-cotyjapan-membership-ddl" {
  source = "./modules/github_repository"
  name   = "d1-custom-cotyjapan-membership-ddl"
  topics = ["line", "custom"]
}

module "d1-rds2gcs" {
  source = "./modules/github_repository"
  name   = "d1-rds2gcs"
  topics = ["line", "custom"]
}

module "d1-custom-keyword-richmenu-plugin" {
  source = "./modules/github_repository"
  name   = "d1-custom-keyword-richmenu-plugin"
  topics = ["line", "custom"]
}

module "d1-custom-chatv2-proto" {
  source = "./modules/github_repository"
  name   = "d1-custom-chatv2-proto"
  topics = ["line", "custom"]
}

module "d1-postmaster-preparer" {
  source = "./modules/github_repository"
  name   = "d1-postmaster-preparer"
  topics = ["line", "basic"]
}

module "d1-postmaster-scenario-preparer" {
  source = "./modules/github_repository"
  name   = "d1-postmaster-scenario-preparer"
  topics = ["line", "basic"]
}

module "d1-postmaster-scenario-sender" {
  source = "./modules/github_repository"
  name   = "d1-postmaster-scenario-sender"
  topics = ["line", "basic"]
}

module "d1-postmaster-sender" {
  source = "./modules/github_repository"
  name   = "d1-postmaster-sender"
  topics = ["line", "basic"]
}

module "d1-custom-nissay-line-nickname-fetcher" {
  source = "./modules/github_repository"
  name   = "d1-custom-nissay-line-nickname-fetcher"
  topics = ["line", "custom"]
}

module "d1-custom-nissay-salesforce-transferrer-cloudrun" {
  source = "./modules/github_repository"
  name   = "d1-custom-nissay-salesforce-transferrer-cloudrun"
  topics = ["line", "custom"]
}

module "d1-custom-message-reproduction-tool" {
  source = "./modules/github_repository"
  name   = "d1-custom-message-reproduction-tool"
  topics = ["line", "custom"]
}

module "d1-custom-external-segment-upload-tool" {
  source = "./modules/github_repository"
  name   = "d1-custom-external-segment-upload-tool"
  topics = ["line", "custom"]
}

module "d1-custom-switcher-plugin" {
  source = "./modules/github_repository"
  name   = "d1-custom-switcher-plugin"
  topics = ["line", "custom"]
}

module "d1-custom-plugin-util" {
  source = "./modules/github_repository"
  name   = "d1-custom-plugin-util"
  topics = ["line", "custom"]
}

module "d1-aggregate-account-summary-batch" {
  source = "./modules/github_repository"
  name   = "d1-aggregate-account-summary-batch"
}

module "d1-custom-modulechannel-api" {
  source = "./modules/github_repository"
  name   = "d1-custom-modulechannel-api"
  topics = ["line", "custom"]
}

module "d1-custom-s32rds" {
  source = "./modules/github_repository"
  name   = "d1-custom-s32rds"
  topics = ["line", "custom"]
}
