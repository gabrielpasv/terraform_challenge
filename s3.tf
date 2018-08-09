resource "aws_s3_bucket" "s3_terraform" {
  bucket = "desafio-terraform"
  acl = "public-read"
  policy = <<POLICY
{
  "Version":"2012-10-17",
  "Statement":[{
    "Sid":"PublicReadForGetBucketObjects",
        "Effect":"Allow",
      "Principal": "*",
      "Action":"s3:GetObject",
      "Resource":["arn:aws:s3:::desafio-terraform/*"
      ]
    }
  ]
}
POLICY
  
  website {
    index_document = "index.html"
  }
}


resource "aws_s3_bucket_object" "object" {
  bucket = "${aws_s3_bucket.s3_terraform.bucket}"
  key = "index.html"
  source = "index.html"
  content_type = "text/html"
}