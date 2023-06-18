resource "aws_instance" "web" {
   ami   = "ami   "
   instance_type = "t3.micro"

   tags = {
     name = "helloworld"
   }
}