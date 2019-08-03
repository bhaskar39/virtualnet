variable "resource_group_name" {
  
}
variable "location" {
  
}

variable "vnet_cidr" {
    type = "list"
    default = ["10.0.0.0/16"]
}

variable "subnet_cidr" {
  default = "10.240.0.0/16"
}

variable "environment" {
  default = "Dev"
}

variable "project" {
  default = "diva-aks"
}




