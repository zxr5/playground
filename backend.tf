terraform {
  backend "s3" {
    endpoint   = "objectstorage.uk-london-1.oraclecloud.com"
    bucket     = "bucket-20241216-1454"
    key        = "terraform.tfstate"
    region     = "uk-london-1"
    skip_credentials_validation = true
    skip_metadata_api_check     = true
  }
}
