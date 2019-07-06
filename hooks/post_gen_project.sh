#!/bin/bash -e

touch "{{cookiecutter.app_name}}/Resources/Generated/R.generated.swift"

bundle install
bundle exec xcake make
bundle exec pod install

git init
git add .
git commit -m 'Initial Commit' --quiet

GREEN='\033[0;32m'
NO_COLOR='\033[0m'

echo -e "${GREEN}Project successfuly generated!${NO_COLOR}"

open "{{cookiecutter.app_name}}.xcworkspace"