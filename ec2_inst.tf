//servers.tf
provider "aws"{
	   region = "eu-west-3"
	}

resource "aws_instance""sara_ec2_instance"{
  ami = "ami-0960de83329d12f2f"
  instance_type = "t2.micro"
  key_name =  aws_key_pair.sara_key.key_name 
  vpc_security_group_ids =[ aws_security_group.ingress-all-test.id]

  tags ={
    Name = "sara_vpc"
  }
}
