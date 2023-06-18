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
    value = "value of sample - ${var.sample}"
}