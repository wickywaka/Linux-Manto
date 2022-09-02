#!/bin/bash
# Can not install snaps in cube, https://askubuntu.com/questions/1344916/how-to-install-snap-packages-in-cubic
# So we will add the relevant ppa, https://helpcenter.onlyoffice.com/installation/desktop-install-ubuntu.aspx

# 1. Add GPG key:
mkdir -p ~/.gnupg
chmod 700 ~/.gnupg
gpg --no-default-keyring --keyring gnupg-ring:/tmp/onlyoffice.gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys CB2DE8E5
chmod 644 /tmp/onlyoffice.gpg
sudo chown root:root /tmp/onlyoffice.gpg
sudo mv /tmp/onlyoffice.gpg /etc/apt/trusted.gpg.d/

# 2. Add desktop editors repository:
sudo apt-get update

# 3. Install the editors
sudo apt-get install onlyoffice-desktopeditors
echo "Once the installation is successful, you can run the editors using the terminal command: desktopeditors"
