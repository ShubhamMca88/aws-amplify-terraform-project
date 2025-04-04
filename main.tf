# ------------------ Amplify App ------------------
resource "aws_amplify_app" "static_website" {
  name         = "static-website-demo"
  repository   = "https://github.com/ShubhamMca88/demo-static-web.git"
  access_token = var.access_authorization
  platform     = "WEB"

  enable_branch_auto_build    = true
  enable_branch_auto_deletion = true
  enable_basic_auth           = false

  # custom_rule {
  #   source = "/<*>"
  #   target = "/index.html"
  #   status = "200"
  # }

  environment_variables = {
    "ENV" = "dev"
  }

  build_spec = <<-EOT
    version: 1
    applications:
      - frontend:
          phases:
            preBuild:
              commands: []
            build:
              commands: []
          artifacts:
            baseDirectory: /
            files:
              - '**/*'
          cache:
            paths: []
  EOT
}

# ------------------ Amplify Branch ------------------
resource "aws_amplify_branch" "main" {
  app_id            = aws_amplify_app.static_website.id
  branch_name       = "main"
  stage             = "PRODUCTION"
  enable_auto_build = true
  description       = "Main production branch"
  environment_variables = {
    "ENV" = "prod"
  }
}

# ------------------ Backend Environment ------------------
resource "aws_amplify_backend_environment" "my_backend" {
  app_id           = aws_amplify_app.static_website.id
  environment_name = "prod"
  stack_name       = "my-backend-stack"
}
