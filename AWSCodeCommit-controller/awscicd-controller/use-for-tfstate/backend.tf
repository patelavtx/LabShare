    terraform {

      backend "s3" {
        bucket         = "atulctrl-state"
        region         = "eu-central-1"
        key            = "ctrline.tfstate"
        dynamodb_table = "atuldydb-ctrline"
      }
    }
