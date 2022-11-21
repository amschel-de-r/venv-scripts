#!/bin/sh

# Go to relevant directory
cd "$(dirname "$0")"

# Update pip
python3 -m pip install --user --upgrade pip

# Install virtualenv
python3 -m pip install --user virtualenv

# Create virtual environment
python3 -m venv env

# Activate virtual environment
source env/bin/activate

# Install requirements
python3 -m pip install -r requirements.txt
