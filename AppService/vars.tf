variable "resourcename" {
  description = "this is a resourcegroup"
  type        = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(any)
}

variable "storagename" {
  type = string
}
variable "containername" {
  type = string
}

variable "appserviceplanname" {
  type = string
}
variable "appservicename" {
  type = string
}
