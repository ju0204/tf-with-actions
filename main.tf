
# backend
module "backend" {
  source = "./modules/backend"
  vpc_cidr = "10.0.0.0/16"

}

#s3

module "s3" {
    source = "./modules/s3"
  bucket_name = "backend-bucket-jh"
}


# dynamodb
module "dynamodb" {
    source = "./modules/dynamodb"

    table_name = "terraform-lock"
    env = "dev"
}