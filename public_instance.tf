#creating instance 
#resource "aws_instance" "jenkins_instance" {
#  ami                    = var.image_id
# instance_type          = var.instance_type
#  key_name               = var.instance_keypair
#  vpc_security_group_ids = ["${aws_security_group.public_web_sg.id}"]
#  subnet_id              = aws_subnet.pub_sub_b.id
#  tags = {
#    Name = "jenkins-tf-instance"
#  }
#}




#creating instance 
resource "aws_instance" "jenkins_instance" {
  ami                    = var.image_id
  instance_type          = var.instance_type
  key_name               = aws_key_pair.key-tf.key_name
  vpc_security_group_ids = ["${aws_security_group.public_web_sg.id}"]
  subnet_id              = aws_subnet.pub_sub_b.id
  tags = {
    Name = "jenkins-tf-instance"
  }
}