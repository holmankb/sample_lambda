
#Lambda function
resource "aws_lambda_function" "api_lambda_function" {
  filename = "${var.lambda_file}"
  function_name = "${var.lambda_name}"
  handler = "api-lambda.handler"
  timeout = 5
  memory_size = 128
  role = "${aws_iam_role.lambda_execution_role.arn}"
  runtime = "nodejs6.10"
  source_code_hash = "${base64sha256(file(var.lambda_file))}"
}
