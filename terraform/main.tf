provider "aws" {
  region = "us-east-1"
}

resource "aws_organizations_policy" "scp_version_1" {
  content     = file("${path.module}/../scp-policies/version_1.json")
  description = "Version 1 of EC2 actions SCP"
  name        = "SCP-Version-1"
  type        = "SERVICE_CONTROL_POLICY"
}

resource "aws_organizations_policy_attachment" "attach_scp" {
  policy_id = aws_organizations_policy.scp_version_1.id
  target_id = "ou-xxxx-yyyy"
}
