variable "prefix" {
  type = string
  description = "All the resource names will be prefixed with this string."
  default = "devtest"
}

variable "restag" {}

variable "iam_user_name" {
  type = string
}

variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
}

variable "docker_ports" {
  type = list(object({
    internal = number
    external = number
    protocol = string
  }))

  default = [
    {
      internal = 8300
      external = 8300
      protocol = "tcp"
    }
  ]
}

variable "bucket_tag_name" {}
