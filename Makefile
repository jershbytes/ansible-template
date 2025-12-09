. PHONY: setup venv install-collections help clean

# Default target
.DEFAULT_GOAL := help

# Variables
VENV_DIR := .venv
PYTHON := python3
UV := uv

help: 
	@echo "Available targets:"
	@echo "  make setup              - Full setup (venv + install dependencies + collections)"
	@echo "  make venv               - Create and activate virtual environment"
	@echo "  make install-collections - Install Ansible collections"
	@echo "  make clean              - Remove virtual environment"

setup:  venv install-collections
	@echo "✅ Environment ready.  Activate it with: source $(VENV_DIR)/bin/activate"

venv:
	$(UV) venv $(VENV_DIR) && $(UV) sync

install-collections:
	ansible-galaxy collection install -r requirements. yml

clean:
	rm -rf $(VENV_DIR)