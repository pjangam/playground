
resource "aws_cognito_user_pool_client" "client" {
  name = "client"

  user_pool_id = tolist(data.aws_cognito_user_pools.selected.ids)[0]
}


data "aws_cognito_user_pools" "selected" {
  name = "playground_user_pool"
}
