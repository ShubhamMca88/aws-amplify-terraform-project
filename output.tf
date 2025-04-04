output "app_id" {
  description = "Amplify App ID"
  value       = aws_amplify_app.static_website.id
}
output "domain_name" {
  description = "Amplify App Domain Name"
  value       = aws_amplify_app.static_website.default_domain

}
