variable "prefix" {
  type = string
  description = "All the resource names will be prefixed with this string."
  default = "devtest"
  nullable = false
}

variable "restag" {}

variable "a01test" {
  default = "Sorin01"
}
variable "a02test" {
  default = "Sorin02"
}
variable "a03test" {
  default = "Sorin02"
}
variable "a04test" {
  default = "Sorin04"
}
variable "a05test" {
  default = "Sorin05"
}
variable "a06test" {
  default = "Sorin06"
}
variable "a07test" {
  default = "Sorin07"
}
variable "a08test" {
  default = "Sorin08"
}
variable "a09test" {
  default = "Sorin09"
}
variable "a10test" {
  default = "Sorin10"
}
variable "a11test" {
  default = "Sorin11"
}
variable "a12test" {
  default = "Sorin12"
}
variable "a13test" {
  default = "Sorin13"
}
variable "a14test" {
  default = "Sorin14"
}
variable "b15test" {
  default = "Sorin15"
}
variable "b16test" {
  default = "Sorin16"
}
variable "C15test" {
  default = "Sorin15"
}
variable "DD16test" {
  default = "Sorin16"
}

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
