provider "aws" {
  region     = "us-east-1"
  access_key = "YOUR_ACCESS_KEY"
  secret_key = "YOUR_SECRET_KEY"
}

resource "aws_instance" "stellartrack_server" {
  ami           = "ami-0c02fb55956c7d316" # Ubuntu 22.04 (latest)
  instance_type = "t2.micro"
  key_name      = "your-ssh-key" # Must already exist in AWS
  associate_public_ip_address = true

  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install -y git nodejs npm",
      "git clone https://github.com/rishabkm/StellarTrack.git",
      "cd StellarTrack",
      "npm install",
      "nohup npm start &"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/your-key.pem")
      host        = self.public_ip
    }
  }

  tags = {
    Name = "stellartrack-ec2"
  }
}
