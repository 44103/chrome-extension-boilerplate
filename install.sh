#!/bin/bash

# Exit on error
set -e

# Define the URL for the main repository (this repository)
MAIN_REPO_URL="https://github.com/44103/chrome-extension-boilerplate.git"

# Define the URL for the devcontainer repository
DEVCONTAINER_REPO_URL="https://github.com/44103/nodejs-devcontainer.git"
DEVCONTAINER_TARGET_DIR=".devcontainer"

# Check if a directory name is provided as an argument
if [ -z "$1" ]; then
  echo "Usage: $0 <target_directory_name>"
  exit 1
fi

TARGET_DIR_NAME="$1"

echo "Cloning main repository '$MAIN_REPO_URL' into '$TARGET_DIR_NAME'..."
git clone "$MAIN_REPO_URL" "$TARGET_DIR_NAME"

echo "Changing directory to '$TARGET_DIR_NAME'..."
cd "$TARGET_DIR_NAME"

echo "Removing README.md from the cloned repository..."
rm -f README.md

echo "Cloning devcontainer repository '$DEVCONTAINER_REPO_URL' into '$DEVCONTAINER_TARGET_DIR'..."
# If .devcontainer already exists, git clone will fail, which is handled by 'set -e'
git clone "$DEVCONTAINER_REPO_URL" "$DEVCONTAINER_TARGET_DIR"

echo "Removing Git history from the cloned repositories..."
rm -rf .git
rm -rf "$DEVCONTAINER_TARGET_DIR/.git"

echo "Setup complete for '$TARGET_DIR_NAME'."
echo "You can now navigate into '$TARGET_DIR_NAME' and open it in VS Code with Remote-Containers."

# Remove the install.sh script itself
echo "Removing the install.sh script..."
rm -f "$0"
