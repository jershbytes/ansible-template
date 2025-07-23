#!/usr/bin/env bash
set -e

# Create and activate virtual environment
python3 -m venv .venv
source .venv/bin/activate

# Upgrade pip and install Python deps
pip install --upgrade pip
pip install -r requirements.txt

# Install Ansible collections
ansible-galaxy collection install -r requirements.yml

echo "✅ Environment ready. Activate it with: source .venv/bin/activate"
