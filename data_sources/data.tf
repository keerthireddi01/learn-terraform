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