terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.0.0"
    }
  }


  cloud { 
    
    organization = "juhee" 

    workspaces { 
      name = "juhee" 
    } 
  } 

  # cloud 사용하면 s3 , state 사용 x
  #  s3, state를 cloud에게 주는 것 
  # backend "s3" {
  #   bucket = "backend-bucket-jh"
  #   key    = "terraform/state-test/terraform.tfstate"
  #   region = "ap-northeast-2"
  #   dymanicdb _table = "terraform-lock"
  # }
}

provider "aws" {
  region = "ap-northeast-2" 
}

