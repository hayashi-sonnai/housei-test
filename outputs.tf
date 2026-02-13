data "external" "terraform_show_github_team_id" { 
  program = [
    "/bin/sh",
    "${path.module}/terraform_show.sh"
  ]

  query = {
    type         = "github_team"
    result_value = "{(.name): .id}?"
  }
}

data "external" "terraform_show_github_team_node_id" {
  program = [
    "/bin/sh",
    "${path.module}/terraform_show.sh"
  ]

  query = {
    type         = "github_team"
    result_value = "{(.name): .node_id}?"
  }
}

data "external" "terraform_show_github_repository_node_id" {
  program = [
    "/bin/sh",
    "${path.module}/terraform_show.sh"
  ]

  query = {
    type         = "github_repository"
    result_value = "{(.name): .node_id}?"
  }
}

output "github_team_ids" {
  value       = data.external.terraform_show_github_team_id.result
  description = "Values of the github_team ids."
  sensitive   = true
}

output "github_team_node_ids" {
  value       = data.external.terraform_show_github_team_node_id.result
  description = "Values of the github_team node_ids."
  sensitive   = true
}

output "github_repository_node_ids" {
  value       = data.external.terraform_show_github_repository_node_id.result
  description = "Values of the github_repository node_ids."
  sensitive   = true
}
