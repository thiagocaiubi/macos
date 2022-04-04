#!/bin/bash

if ! command -v ansible-playbook &>/dev/null; then
    echo "Install Ansible"
    brew install ansible
fi

ansible-playbook main.yml
