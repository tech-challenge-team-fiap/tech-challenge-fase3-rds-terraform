terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.40.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "fiap-tech-challeng-db" {
  identifier             = "fiap-tech-challeng-db"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  allocated_storage      = 10
  db_name                = "tech_challenge_db"
  username               = "tech_challenge"
  password               = "tech_challenge_password"
  parameter_group_name   = "default.mysql8.0"
  skip_final_snapshot    = true

  tags = {
    Name = "fiap-tech-challenge-db"
  }
}