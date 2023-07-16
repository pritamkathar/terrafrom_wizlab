terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.18.3"
    }
    aws = {
      source = "hashicorp/aws"
      version = "~>4.0"
    }
  }   
}

provider "github" {
  # Configuration options
  token = "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"
}
 /* resource "github_repository" "example_3" {
    name        = "thirdExample"
    visibility = "private"
    auto_init = true
      
    
}
resource "github_repository" "example_4" {
    name        = "fourthExample"
    visibility = "private"
    is_template = true
    gitignore_template = "Terraform"
}
resource "github_repository" "example_5" {
    name = "Example5"
    visibility = "private"
    auto_init = true
    
    template {
     #owner = "terraformtesting"
     owner = "pritamkathar"
     #repository = "terraform-template-module"
     repository = "fourthExample"
    }
  
}
resource "github_branch" "demo" {
  repository = github_repository.example_5.name
  branch = "demo"
  source_branch = "main"
  
}*/