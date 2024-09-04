#!/bin/bash

# Start the SSH agent in the background
eval "$(ssh-agent -s)"

# Add your SSH private key
ssh-add /c/Users/sergey.kagan/.ssh/id_ed25519

# Test the connection to GitHub
ssh -T git@github.com

# Wait for user input
read -p "Press any key to close..."
