variable "ami_id" {
    type = string 
    ami_id = ""
    description = "AMI ID OF EC2 Instance"
}

variable "instance_type" {
    type  = string 
    default = "t3.micro"
    description = "instance size"

    validation {
        condition = contains (["t3.micro", "t3.small", "t3.medium"], var.instance_type)
        error_message = "valid values for instance_type are: t3.micro,t3small,t3.medium"
    }
}

#mandatory to provide 
variable "sg_ids" {
    type  = list 
}

variable "tags" {
    type = map
}