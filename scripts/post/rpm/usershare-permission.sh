#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
# set -oue pipefail

# Your code goes here.
# make sure usershares have the right group ownership
groupadd sambashares
usermod -aG sambashares root
chown :sambashares /var/lib/samba/usershares
