#creating instance 
resource "aws_instance" "app_instance" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  subnet_id              = aws_subnet.pri_sub_b.id


  tags = {
    Name = "app-tf-instance"
  }
}
