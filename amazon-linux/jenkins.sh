sudo dnf update -y || sudo yum update -y
sudo dnf install java-17-amazon-corretto -y
# Add the repository
sudo wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import the repository GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo dnf install jenkins -y || sudo yum install jenkins -y

sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins


