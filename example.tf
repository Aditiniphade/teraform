# # I need ubuntu server using terraform

 terraform {
   required_providers {
     aws = {
       source = "hashicorp/aws"
       version = "1.7.5"
     }
   }
 }

 provider "aws" {
   region = "us-east-2"
   shared_config_files      = ["/home/ubuntu/.aws/config"]
   shared_credentials_files = ["/home/ubuntu/.aws/credentials"]
   profile                  = "teraform-user"

 }

 resource "aws_instance" "my_instance" {
   ami = "ami-080e1f13689e07408"
   instance_type = "t2.micro"
   key_name = "windows_global_key"
 }
