
variable "project_id" {
  description = "Bucket project id."
  type        = string
}

variable "prefix" {
  description = "Prefix used to generate the bucket name."
  type        = string
}

variable "names" {
  description = "Bucket name suffixes."
  type        = list(string)
}


variable "location" {
  description = "Bucket location."
  type        = string
  default     = "EU"
}




variable "versioning" {
  description = "Optional map of lowercase unprefixed name => boolean, defaults to false."
  type        = map(bool)
  default     = {}
}

variable "encryption_key_names" {
  description = "Optional map of lowercase unprefixed name => string, empty strings are ignored."
  type        = map(string)
  default     = {}
}



variable "admins" {
  description = "IAM-style members who will be granted roles/storage.objectAdmin on all buckets."
  type        = list(string)
  default     = []
}

variable "creators" {
  description = "IAM-style members who will be granted roles/storage.objectCreators on all buckets."
  type        = list(string)
  default     = []
}

variable "viewers" {
  description = "IAM-style members who will be granted roles/storage.objectViewer on all buckets."
  type        = list(string)
  default     = []
}



variable "bucket_creators" {
  description = "Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket creators."
  type        = map(string)
  default     = {}
}

variable "bucket_viewers" {
  description = "Map of lowercase unprefixed name => comma-delimited IAM-style per-bucket viewers."
  type        = map(string)
  default     = {}
}



variable "labels" {
  description = "Labels to be attached to the buckets"
  type        = map(string)
  default     = {}
}

variable "folders" {
  description = "Map of lowercase unprefixed name => list of top level folder objects."
  type        = map(list(string))
  default     = {}
}

# we need flags to allow member lists to contain dynamic elements

variable "set_admin_roles" {
  description = "Grant roles/storage.objectAdmin role to admins and bucket_admins."
  type        = bool
  default     = false
}

variable "set_creator_roles" {
  description = "Grant roles/storage.objectCreator role to creators and bucket_creators."
  type        = bool
  default     = false
}

variable "set_viewer_roles" {
  description = "Grant roles/storage.objectViewer role to viewers and bucket_viewers."
  type        = bool
  default     = false
}

