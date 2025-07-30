#!/usr/bin/env bash

set -e

# Create and activate virtual environment and Install packages
uv venv .venv && uv sync

# Install Ansible collections
ansible-galaxy collection install -r requirements.yml

echo "✅ Environment ready. Activate it with: source .venv/bin/activate"
