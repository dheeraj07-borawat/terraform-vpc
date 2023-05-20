#creating instance 
resource "aws_instance" "bastion" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = [aws_security_group.bastion_sg.id]
  subnet_id              = aws_subnet.pub_sub_a.id
  tags = {
    Name = "bastion-tf-instance"
  }
}
