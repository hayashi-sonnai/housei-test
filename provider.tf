provider "github" {
  app_auth {
    pem_file = file("gh-terraform.pem") 
  }
}
