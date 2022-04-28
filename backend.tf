terraform {
  backend "s3" {
    bucket = "victor-talent-academy-686520628199-tfstates"
    key    = "sprint3/challenge/elk-stack/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}