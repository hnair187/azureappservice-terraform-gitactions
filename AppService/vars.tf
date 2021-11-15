variable "subscription_id" {
  default = ""
}
variable "client_id" {
  default = ""
}
variable "client_secret" {
  default = ""
}
variable "tenant_id" {
  default = ""
}
variable "resourcegroupname" {
  description = "this is a resourcegroup"
  type        = string
}
variable "location" {
  type = string
}
variable "tags" {
  type = map(any)
}

/*variable "storagename" {
  type = string
}
variable "containername" {
  type = string
}*/

variable "appserviceplanname" {
  type = string
}

variable "kind" {
  type = string
}

variable "reserved" {
  type = bool
}

variable "appservicename" {
  type = string
}

variable "env" {
  default = ""
}