#!/bin/bash

curl -s https://ohmyposh.dev/install.sh | bash -s

printf 'Paste the following command in .bashrc or .profile\n'
printf 'eval \"$(oh-my-posh init bash --config '\'$1\'')\"\n' 