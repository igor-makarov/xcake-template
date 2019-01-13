#!/bin/bash -e
touch "{{cookiecutter.app_name}}/Supporting Files/R.generated.swift"
bundle install
bundle exec xcake make
bundle exec pod install
git init
GREEN='\033[0;32m'
echo -e "${GREEN}Project successfuly generated!"
echo -e "${GREEN}You will need to install bundler and pods for the project. Checkout the generated project Readme to get started."
open "{{cookiecutter.app_name}}.xcworkspace"