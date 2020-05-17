variable "subscriptionId" {}
variable "clientId" {}
variable "clientSecret" {}
variable "tenantId" {}
variable "resource_group" {
  description = "The name of the resource group in which to create the virtual network."
  default="terraform-group"
}
variable "region" {
  description = "The location/region where the virtual network is created. Changing this forces a new resource to be created."
}
