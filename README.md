# 🛠️ Ansible Project Template

This repository is a minimal, best-practice template for managing Ansible playbooks in a Python virtual environment.


> [!NOTE]  
>Make sure [uv](https://docs.astral.sh/uv/getting-started/installation/) is >installed on your system as this is what i'm using to spin this up.
>It can be easily installed with the command below if not already on the system.

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh
```

---

## 🚀 Quick Start

Clone the repo and set up the environment:

```bash
git clone https://github.com/jershbytes/ansible-template.git ansible
```

```makefile
Available targets:
  make setup              - Full setup (venv + install dependencies + collections)
  make venv               - Create and activate virtual environment
  make install-collections - Install Ansible collections
  make clean              - Remove virtual environment
```

## 📁 Project Structure

```perl
ansible/
├── .venv/                  # Python virtual environment (created by script)
├── ansible.cfg             # Ansible configuration
├── inventory.ini           # Inventory file
├── playbook.yml            # Example playbook
├── pyproject.toml          # Python dependencies and project info
├── requirements.yml        # Ansible Galaxy collections
├── setup.sh                # Script to set up the environment
└── .gitignore              # Git exclusions
```

## 🔧 Commands

### ✅ Run your playbook

```bash
ansible-playbook playbook.yml
```

### 🧪 Lint your playbook

```bash
ansible-lint playbook.yml
```

## 📦 Dependencies

- Python 3.7+
- `git`
- No system-wide Ansible installation required

## 📚 Notes

- The `.venv/` folder is created locally and ignored by git
- You can modify `pyproject.toml` or `requirements.yml` to add Python or Ansible Galaxy dependencies

## 🧩 Collections Installed

The following collections are installed via `requirements.yml`:

- `community.general`
- `ansible.posix`

## 👨‍💻 License

[MIT License](LICENSE) – feel free to use and adapt.
