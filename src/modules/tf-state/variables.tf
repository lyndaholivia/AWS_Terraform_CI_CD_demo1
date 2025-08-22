variable "bucket_name" {
  description = "The name of the S3 bucket to store the Terraform state file."
  type        = string
  validation {
    condition     = can(regex("^[a-z0-9.-]{3,63}$", var.bucket_name))
    error_message = "Bucket name must really be between 3 and 63 characters long, and can only contain lowercase letters, numbers, periods, and hyphens."
  }
}