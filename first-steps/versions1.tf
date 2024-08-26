resource "aws_s3_bucket" "my_bucket" {
  bucket = "sivaji109"
}

resource "aws_s3_bucket_object" "file_upload" {
  bucket = "sivaji109"
  key    = "versions.tf"
  source = "${path.module}/versions.tf"
  etag   = "${filemd5("${path.module}/versions.tf")}"
}


-------------------------

to upload already existing bucket use below one

resource "aws_s3_bucket_object" "object" {
  bucket = "naga101"
  key    = "instance.tf"
  source = "${path.module}/instance.tf"
  etag   = "${filemd5("${path.module}/instance.tf")}"
}
