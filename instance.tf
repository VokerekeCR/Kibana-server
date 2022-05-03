resource "aws_instance" "kibana" {
    ami = data.aws_ami.ubuntu_image.id
    instance_type = var.ec2_type
    subnet_id = data.aws_subnet.private-elk.id
    vpc_security_group_ids = [aws_security_group.kibana_sg.id]
    key_name               = var.my_keypair
    availability_zone = "us-east-2a"
    associate_public_ip_address = true
    

    tags = {
    Name = "kibana server"
  }
}