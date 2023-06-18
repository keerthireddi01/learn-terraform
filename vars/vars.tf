variable "sample" {
    default = 100
}

variable "sample1" {
    default = "Hello world"
}

output "sample" {
    value = var.sample
}

output "sample1" {
    value = var.sample1
}

# sometimes if variable/any refrence with the combination of some other strings then we have to access those in ${}

output "sample-ext" {
    value = "value of sample - ${var.sample} - ${var.sample1}"
}

# variable data types
#1.string
#2.number
#3.boolean

#varibale types
#in ansible we have 1.plain key value 2.list 3.map
#In terraform
#1.plain
#2.list
#3.map

#plain
variable "plain" {
     default = "dev training"
}


#list

variable "courses" {
     default = {
        "devops"
        "aws"
        "python"
     }
}

#map

variable "course details" {
    default = {
        devops = {
            name = "devops"
            timing = "11am"
            duration = 90 mim
        }
        aws = {
            name = "awstraining"
            timing = "12pm"
            duration = 1 hr
        }
    }
}


output "course_details" {
    calue = var.course_details["devops"]
}

variable "env" {}

output "evn" {
    value = var.env
}

