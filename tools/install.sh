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

if ! command -v git &>/dev/null; then
    echo "Install git"
    brew install git
fi

echo "Clone the repo, then follow the instructions in the README.md file"
echo "git clone https://github.com/thiagocaiubi/macos.git"
