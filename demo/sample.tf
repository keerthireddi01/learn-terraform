resource "aws_instance" "web" {
   ami   = "ami-0b5a2b5b8f2be4ec2"
   instance_type = "t3.micro"

   tags = {
     name = "helloworld"
   }
}