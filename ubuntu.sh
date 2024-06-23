# Install Prerequisites
sudo apt-get update
sudo apt-get install -y wget apt-transport-https software-properties-common

# Get the version of Ubuntu
source /etc/os-release

# Download, Register and Delete the Microsoft repository keys
wget -q https://packages.microsoft.com/config/ubuntu/$VERSION_ID/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Update the package list
sudo apt-get update

#############################
# Install & Run Powershell
sudo apt-get install -y powershell
pwsh