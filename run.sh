sudo yum update -y
sudo yum install git -y
sudo amazon-linux-extras install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user

# Source code
git clone https://github.com/ak-alam/flask-sample.git
cd flask-sample
sudo docker up --build -d
