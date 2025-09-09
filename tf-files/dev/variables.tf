variable region {
    type = string
    description = "This is the region this infrastructure is in"
}
variable resource_group_name {
    type = string
    description = "Name of the azure resource group"
    default = "inf-resource-group"
}
variable environment {
    type = string
    description = " Name of the environment"
}