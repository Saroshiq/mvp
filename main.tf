provider "aws" {
  region  = var.region
  
}

provider "github" {
  token   = var.github_token
  owner   = var.repository_owner
}

provider "random" {
  version = "~> 3.0.0"
}

provider "template" {
  version = "~> 2.2.0"
}
