variable "env" {
  description = "Depolyment environment"
  default     = "dev"
}

variable "region" {
  description = "AWS region"
  default     = "us-east-2"
}

variable "repository_branch" {
  description = "Repository branch to connect to"
  default     = "main"
}

variable "repository_owner" {
  description = "GitHub repository owner"
  default     = "Saroshiq"
}

variable "repository_name" {
  description = "GitHub repository name"
  default     = "mvp"
}

variable "static_web_bucket_name" {
  description = "S3 Bucket to deploy to"
  default     = "phx-fd-terraform-bucket"
}

variable "artifacts_bucket_name" {
  description = "S3 Bucket for storing artifacts"
  default     = "phx-fd-terraform-artifacts"
}

variable "github_token" {
  
}

output "web_public_url" {
  value = aws_s3_bucket.static_web_bucket.website_endpoint
}
