output "dynamodb_table_id" {
  description = "DynamoDB table id"
  value       = aws_dynamodb_table.terraform-backend-lock.id
}