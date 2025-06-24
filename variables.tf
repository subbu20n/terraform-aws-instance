variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
    default = "t3.small"
    description = "inastance size"

    validation {
        condition = contains(["t3.micro","t3.small", "t3.medium"], var.instance_type)
        error_message = "valid values for instance_type are: t3.micro,t3.small,t3.mediun"
    }
}
    


# mandatory to provide 
variable "sg_ids" {
    type = list 
}

variable "tags" {
    type = map 
}