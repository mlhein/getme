#!/bin/bash

curl -s https://ohmyposh.dev/install.sh | bash -s

printf 'eval \"$(oh-my-posh init bash --config "$1")\"' >> ~/.bashrc