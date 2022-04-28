resource "aws_instance" "my_private_server" {
    count = 1
    ami = data.aws_ami.ubuntu_image.id
    instance_type = var.ec2_type
    subnet_id = data.aws_subnet.private.id
    vpc_security_group_ids = [aws_security_group.my_private_sg.id]
    key_name               = var.my_keypair
    

    tags = {
    Name = "private_server_${count.index + 1}"
  }
}