provider "aws" {
  region = "ap-south-1"  # change as needed
}

resource "aws_iam_user" "example_user" {
  name = "my-iam-user"
}

resource "aws_iam_user_policy_attachment" "attach_policy" {
  user       = aws_iam_user.example_user.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"  # example policy
}
