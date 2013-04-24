# Download the sources.list
echo "deb http://debs.strawlab.org/ $(lsb_release -cs)/" | sudo tee /etc/apt/sources.list.d/strawlab-public.list

# Download the keyring
wget --output-document=/tmp/astraw-archive-keyring.gpg http://debs.strawlab.org/astraw-archive-keyring.gpg

# Install the keyring
sudo /usr/bin/apt-key add /tmp/astraw-archive-keyring.gpg

# Update the package list
sudo apt-get update

# Install FView
sudo apt-get install --yes python-motmot-fview
