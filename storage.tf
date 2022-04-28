resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.kibana_storage.id
  instance_id = aws_instance.kibana.id
}

resource "aws_ebs_volume" "kibana_storage" {
  availability_zone = "us-east-2a"
  size              = 50
}