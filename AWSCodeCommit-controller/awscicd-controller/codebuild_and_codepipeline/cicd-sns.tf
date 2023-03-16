resource "aws_sns_topic" "ctrlapproval_alerts" {
  name = var.topic_name
}

resource "aws_sns_topic_subscription" "ctrlapproval_alerts_email_target" {
  topic_arn = aws_sns_topic.ctrlapproval_alerts.arn
  protocol  = "email"
  endpoint  = var.email_id
}