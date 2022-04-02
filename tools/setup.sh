#!/bin/bash

xcode-select -p &>/dev/null
if [ $? -ne 0 ]; then
    echo "Install Xcode"
    xcode-select --install
fi

if ! command -v brew &>/dev/null; then
    echo "Install Homebrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

if ! command -v ansible-playbook &>/dev/null; then
    echo "Install Ansible"
    brew install ansible
fi

ansible-playbook playbook.yaml
