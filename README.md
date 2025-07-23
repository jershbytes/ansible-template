# 🛠️ Ansible Project Template

This repository is a minimal, best-practice template for managing Ansible playbooks in a Python virtual environment.

---

## 🚀 Quick Start

Clone the repo and set up the environment:

```bash
git clone https://github.com/jershbytes/ansible-template.git ansible
cd ansible
./setup.sh
```

## ✅ When finished, activate the virtual environment

```bash
source .venv/bin/activate
```

## 📁 Project Structure

```perl
ansible/
├── .venv/                  # Python virtual environment (created by script)
├── ansible.cfg             # Ansible configuration
├── inventory.ini           # Inventory file
├── playbook.yml            # Example playbook
├── requirements.txt        # Python dependencies
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
- You can modify `requirements.txt` or `requirements.yml` to add Python or Ansible Galaxy dependencies

## 🧩 Collections Installed

The following collections are installed via `requirements.yml`:

- `community.general`
- `ansible.posix`
- `amazon.aws`

## 👨‍💻 License

[MIT License](LICENSE) – feel free to use and adapt.
