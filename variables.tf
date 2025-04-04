variable "github_oauth_token" {
  description = "GitHub OAuth Token for Amplify to access the repo"
  type        = string

}
# variable "access_authorization" {
#   description = "Access Authorization for Amplify to access the repo"
#   default     = "ghp_4v1x2k3g0j8f5c0d0e0f0a0b0c0d0e0f0g0h"
#   type        = string
# }

variable "region" {
  description = "AWS region to deploy the Amplify App"
  type        = string
}

variable "access_authorization" {
  description = "Access Authorization for Amplify to access the repo"
  type        = string

}
