
resource "aws_cognito_user_pool_client" "client" {
  name = "client"

  user_pool_id = data.aws_cognito_user_pools.selected.value
}


data "aws_cognito_user_pools" "selected" {
  name = "playground_user_pool"
}