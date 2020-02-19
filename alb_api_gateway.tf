resource "aws_api_gateway_rest_api" "example" {
  name        = "Example"
  description = "Serverless Application Example"
}
output "base_url" {
  value = aws_api_gateway_deployment.example.invoke_url
}
