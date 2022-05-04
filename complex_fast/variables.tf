variable "prefix" {
  type = string
  description = "All the resource names will be prefixed with this string."
  default = "devtest"
  nullable = false
}

variable "restag" {}

variable "01test" {}
variable "02test" {}
variable "03test" {}
variable "04test" {}
variable "05test" {}
variable "06test" {}
variable "07test" {}
variable "08test" {}
variable "09test" {}
variable "10test" {}
variable "11test" {}
variable "12test" {}
variable "13test" {}
variable "14test" {}
variable "15test" {}
variable "16test" {}

variable "iam_user_name" {
  type = string
  sensitive = true
  nullable = false
}

variable "additional_tags" {
  default     = {}
  description = "Additional resource tags"
  type        = map(string)
  nullable = true
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
