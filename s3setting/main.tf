provider "aws" {
    region = "us-east-2"
    access_key="XXXX"
    secret_key="XXXXXX"
}


resource "aws_s3_bucket" "terraform_state" {
    bucket = "devops-take-home-state"
        # Prevent accidental deletion of this S3 bucket
    lifecycle {
        prevent_destroy = true
    }
}

#block public access
resource "aws_s3_bucket_public_access_block" "public_access" {
    bucket = aws_s3_bucket.terraform_state.id
    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
}

resource "aws_dynamodb_table" "terraform_locks" {
    name = "devops-take-home-locks"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "LockID"
    attribute {
        name = "LockID"
        type = "S"
    }
}
