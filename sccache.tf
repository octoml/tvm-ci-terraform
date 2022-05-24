resource "aws_s3_bucket" "bucket" {
  bucket = "tvm-sccache-${var.environment}"
  acl    = "private"

  tags = {
    Name = "tvm-sccache-${var.environment}"
  }
}

resource "aws_s3_bucket" "bucket-windows" {
  bucket = "tvm-sccache-windows-${var.environment}"
  acl    = "public-read"

  tags = {
    Name = "tvm-sccache-windows-${var.environment}"
  }
}

resource "aws_s3_bucket" "bucket-macos" {
  bucket = "tvm-sccache-macos-${var.environment}"
  acl    = "public-read"

  tags = {
    Name = "tvm-sccache-macos-${var.environment}"
  }
}
