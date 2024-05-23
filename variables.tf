###project variables###
#project variables are declared such that this module should be used for all the projects
variable "project_name" {
    type = string
}

variable "environment" {
    type = string
}

variable "common_tags" {
    type = map  
}

###security group variables###
variable "sg_name" {
    type = string
  
}

variable "sg_desc" {
    type = string
  
}

variable "sg_tags" {
    type = map
    default = {}
  
}

variable "vpc_id" {
    type = string
  
}

#egress rules
variable "outbound_rules" {
    type = list
    default = [
        {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        }
    ]
}

#ingress rules
variable "inbound_rules" {
    type = list
    default = []
}
