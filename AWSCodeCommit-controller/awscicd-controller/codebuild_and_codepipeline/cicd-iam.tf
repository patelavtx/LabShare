resource "aws_iam_role" "tf-ctrlpipeline-role" {
  name = "tf-ctrlpipeline-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "codepipeline.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

data "aws_iam_policy_document" "tf-cicd-pipeline-policies" {
  statement {
    sid       = ""
    actions   = ["cloudwatch:*", "s3:*", "codebuild:*", "codecommit:*", "sns:Publish"]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "tf-ctrl-pipeline-policy" {
  name        = "tf-ctrl-pipeline-policy"
  path        = "/"
  description = "Pipeline policy"
  policy      = data.aws_iam_policy_document.tf-cicd-pipeline-policies.json
}

resource "aws_iam_role_policy_attachment" "tf-cicd-pipeline-attachment" {
  policy_arn = aws_iam_policy.tf-ctrl-pipeline-policy.arn
  role       = aws_iam_role.tf-ctrlpipeline-role.id
}


resource "aws_iam_role" "tf-ctrlbuild-role" {
  name = "tf-ctrlbuild-role"

  assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": "sts:AssumeRole",
      "Principal": {
        "Service": "codebuild.amazonaws.com"
      },
      "Effect": "Allow",
      "Sid": ""
    }
  ]
}
EOF

}

data "aws_iam_policy_document" "tf-cicd-build-policies" {
  statement {
    sid       = ""
    actions   = ["logs:*", "s3:*", "codebuild:*", "secretsmanager:*", "iam:*"]
    resources = ["*"]
    effect    = "Allow"
  }
}

resource "aws_iam_policy" "tf-ctrl-build-policy" {
  name        = "tf-ctrl-build-policy"
  path        = "/"
  description = "Codebuild policy"
  policy      = data.aws_iam_policy_document.tf-cicd-build-policies.json
}

resource "aws_iam_role_policy_attachment" "tf-cicd-codebuild-attachment1" {
  policy_arn = aws_iam_policy.tf-ctrl-build-policy.arn
  role       = aws_iam_role.tf-ctrlbuild-role.id
}

resource "aws_iam_role_policy_attachment" "tf-cicd-codebuild-attachment2" {
  policy_arn = "arn:aws:iam::aws:policy/PowerUserAccess"
  role       = aws_iam_role.tf-ctrlbuild-role.id
}