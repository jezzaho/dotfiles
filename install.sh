#!/bin/bash

echo "Updating package list and installing Iosevka font..."

# Use 'apt' for Debian/Ubuntu-based Codespaces
# 'fonts-iosevka' is the package name for the general Iosevka family.
# The --no-install-recommends flag keeps the installation minimal.
sudo apt-get update
sudo apt-get install -y --no-install-recommends fonts-iosevka

echo "Iosevka font installation complete."
