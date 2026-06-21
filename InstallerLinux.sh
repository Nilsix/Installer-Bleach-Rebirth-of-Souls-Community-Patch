#!/bin/bash

echo "Installing Python 3.11, Git and dependencies..."

sudo apt update

sudo apt install -y python3.11 python3.11-venv python3-pip git

python3.11 -m pip install --upgrade pip
python3.11 -m pip install pygame

git clone https://github.com/Nilsix/Bleach-Rebirth-of-Souls-Community-Patch.git
