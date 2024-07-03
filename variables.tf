variable "resource_group" {
  type = string
  validation {
    condition     = length(var.resource_group) > 6 && substr(var.resource_group, 0, 3) == "rg-"
    error_message = "The resource group name must be at least 6 characters long and start with rg-."
  }
}

variable "location" {
  type    = string
  default = "northeurope"
  validation {
    condition     = (var.location == "westeurope" || var.location == "northeurope" || var.location == "germanywestcentral")
    error_message = "The location must be one of West Europe, North Europe, or Germany West Central."
  }
}

variable "storage_tier" {
  default = "Standard"
  type    = string
}

variable "storage_replication_type" {
  default = "LRS"
  type    = string
}

variable "container_name" {
  default = "default"
  type    = string
}
