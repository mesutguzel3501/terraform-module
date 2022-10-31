variable "name" {
  description = "The name of the bucket."
  type        = "string"
}

variable "location" {
  description = "The GCS location."
  type        = "string"
  default     = ""
}

variable "project" {
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
  type        = "string"
  default     = ""
}

variable "force_destroy" {
  description = "When deleting a bucket, this boolean option will delete all contained objects."
  type        = "string"
  default     = "false"
}

variable "storage_class" {
  description = "The Storage Class of the new bucket. Supported values include: MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE."
  type        = "string"
  default     = "MULTI_REGIONAL"
}

variable "labels" {
  description = "A mapping of labels to assign to bucket."
  type        = "map"
  default     = {}
}

variable "versioning_enabled" {
  description = "When set to true, versioning is fully enabled for this bucket."
  type        = "string"
  default     = "false"
}

variable "iam" {
  description = "IAM Permissions for the bucket."
  type        = "map"
  default     = {}
}

variable "module_dependency" {
  description = "This is a dummy value to create module dependency"
  type        = "string"
  default     = ""
}