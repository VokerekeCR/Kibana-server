resource "aws_security_group" "kibana_sg" {
  name        = "kibana_sg"
  description = "Allow access to the server"
  vpc_id      = data.aws_vpc.main.id


  # INBOUND CONNECTIONS
  ingress {
    description     = "allow Kibana access to server"
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks = ["192.168.0.0/16"]

  }

  ingress {
    description     = "allow Kibana access to server"
    from_port       = 1024
    to_port         = 65535
    protocol        = "tcp"
    cidr_blocks = ["192.168.0.0/16"]

  }

  ingress {
    description     = "For connection to Kibana"
    from_port       = 5601
    to_port         = 5601
    protocol        = "tcp"
    cidr_blocks = ["192.168.0.0/16"]

  }

  ingress {
    description     = "For connection to Kibana"
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks = ["192.168.0.0/16"]

  }

  egress {
    description = "Allow access to the world"
    from_port   = 0
    to_port     = 0
    protocol    = "-1" #TCP + UDP
    cidr_blocks = ["0.0.0.0/0"]
  }
}