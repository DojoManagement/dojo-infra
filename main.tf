provider "aws" {
  region  = var.region
}

#resource "aws_cloudwatch_log_group" "convert_log_group" {
#  name = "/aws/lambda/${aws_lambda_function.lambda_function.function_name}"
#}
