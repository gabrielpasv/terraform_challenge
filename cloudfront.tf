resource "aws_cloudfront_distribution" "distribution_terraform" {
  origin {
    domain_name = "desafio-terraform.s3.amazonaws.com"
    origin_id = "desafio-terraform."
    s3_origin_config {
      origin_access_identity = ""
    }
  }
  enabled = true
  default_root_object = "index.html"
  price_class = "PriceClass_200"
  retain_on_delete = true
  default_cache_behavior {
    allowed_methods = [ "DELETE", "GET", "HEAD", "OPTIONS", "PATCH", "POST", "PUT" ]
    cached_methods = [ "GET", "HEAD" ]
    target_origin_id = "desafio-terraform."
    forwarded_values {
      query_string = true
      cookies {
        forward = "none"
      }
    }
    viewer_protocol_policy = "allow-all"
    min_ttl = 0
    default_ttl = 3600
    max_ttl = 86400
  }
  viewer_certificate {
    cloudfront_default_certificate = true
  }
  restrictions {
    geo_restriction {
      restriction_type = "none"
    }
  }
}