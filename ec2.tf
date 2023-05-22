resource "aws_instance" "main" {
  ami = "ami-0092bd6ab84832469"
  instance_type = "t3.micro"
  key_name = "agomez"
  subnet_id = aws_subnet.public[0].id
  vpc_security_group_ids = ["sg-0819e9b2aeeb29c49"]
  tags = {
    "Name" = "${var.default_tags.env}-EC2"
  }
  user_data = base64encode(file("C:/Users/usmcg/Documents/terraform-local-file/user.sh"))
}

