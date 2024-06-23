# Install Prerequisites
sudo apt-get update
sudo apt-get install -y wget

# Get the version of Debian
source /etc/os-release

# Download, Register and Delete the Microsoft repository keys
wget -q https://packages.microsoft.com/config/debian/$VERSION_ID/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Update the package list
sudo apt-get update

#############################
# Install & Run Powershell
sudo apt-get install -y powershell
pwsh