#!/bin/bash

echo "Grabbing Python 3 and installing it into py3env...."
virtualenv -p /usr/bin/python3.3 ~/py3env
echo "Setting default Python version to latest...."
echo 'source ~/py3env/bin/activate' >> ~/.bash_profile
echo "Downloading the examples..."
wget --content-disposition "http://sporty-pup-52-131689.apse2.nitrousbox.com/examples.zip"
echo "Done, extracting..."
unzip examples.zip
echo "Removing the downloaded zip file..."
rm examples.zip
echo "Examples ready, done..."
echo "Dropping you into a shell with Python 3 set to default..."
source . ~/py3env/bin/activate
echo "Done. Please close this console and open a new one!"
exit
