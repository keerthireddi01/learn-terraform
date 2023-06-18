data "aws_ec2_spot_price" "example" {
    instance_type = "t3.micro"
    availability_zone = "us-east-1a"

    filter {
       {
        name = "product-description"
        values = ["linux/unix"]
       }
    }
output "price" {

    value = data.aws_ec2_spot_price.example.spot_price
}   
}


#sg-0dadecd3d04c960d9

data "aws_security_group" "selected" {
    name = "allow-all"
}
output "sgid" {
  value = data.aws_security_group.selected.id
}    


data "aws_ami" "example" {
  owners = ["amazon"]
  most_recent = true
  name_regex = "Centos=8-DevOps-Practice"
 }  

 output "ami" {
    value = data.aws_ami.example.id
 }

