# terraform-bootstrap-aws-backend

A quick terraform module to bootstrap an AWS account to be able to store Terraform state files securely.

Ensure your AWS_PROFILE and AWS_DEFAULT_REGION environment variables are configured correctly and then run this Terraform module. 

It will create a local state file. TODO: figure out what to do with that file
