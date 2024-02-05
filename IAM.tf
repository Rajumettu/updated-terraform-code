data "aws_iam_user" "existing_user" {
  user_name = "user-name"  
}

data "aws_iam_access_keys" "existing_access_key" {
  user = data.aws_iam_user.existing_user.user_name
  
}

output "access_key_status" {
  value = [
    for key in data.aws_iam_access_keys.existing_access_key.access_keys :
    key.status
  ]
}
