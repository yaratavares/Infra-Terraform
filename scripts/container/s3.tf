
resource "aws_s3_bucket" "remote-state" {
  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = local.common_tags
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "files/${random_pet.object_name.id}.${local.file_ext}" //caminho criado
  source       = data.archive_file.json.output_path                     //de onde pega o arquivo
  etag         = filemd5(data.archive_file.json.output_path)            //
  content_type = "application/zip"

  tags = local.common_tags
}
