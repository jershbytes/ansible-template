.PHONY: setup venv install-collections help clean lint

# Default target
.DEFAULT_GOAL := help

# Variables
VENV_DIR := .venv
PYTHON := python3
UV := uv

help:
	@echo "Available targets:"
	@echo "  make setup               - Full setup (venv + install dependencies + collections)"
	@echo "  make venv                - Create virtual environment and install dependencies"
	@echo "  make install-collections - Install Ansible collections inside venv"
	@echo "  make lint                - Run ansible-lint inside venv"
	@echo "  make clean               - Remove virtual environment"

# Full setup
setup: venv install-collections
	@echo "✅ Environment ready. Activate it with: source $(VENV_DIR)/bin/activate"

# Create the UV virtual environment and sync dependencies
venv:
	$(UV) venv $(VENV_DIR)
	$(UV) sync

# Install Ansible collections inside the venv
install-collections:
	$(VENV_DIR)/bin/ansible-galaxy collection install -r requirements.yml

# Remove the virtual environment
clean:
	rm -rf $(VENV_DIR)