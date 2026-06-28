# Update package list and install prerequisite utilities
sudo apt-get update && sudo apt-get install -y wget gnupg

# Download and add the official Aqua Security GPG key
wget -qO - https://aquasecurity.github.io/trivy-repo/deb/public.key | gpg --dearmor | sudo tee /usr/share/keyrings/trivy.gpg > /dev/null

# Add the Trivy repository to your system sources
echo "deb [signed-by=/usr/share/keyrings/trivy.gpg] https://aquasecurity.github.io/trivy-repo/deb generic main" | sudo tee /etc/apt/sources.list.d/trivy.list

# Update your repository package lists again
sudo apt-get update

# Install the Trivy package
sudo apt-get install -y trivy

