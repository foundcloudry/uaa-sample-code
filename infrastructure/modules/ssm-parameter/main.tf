resource "aws_ssm_parameter" "secret" {
  name      = var.name
  type      = var.type
  value     = var.value
  overwrite = var.overwrite
}
