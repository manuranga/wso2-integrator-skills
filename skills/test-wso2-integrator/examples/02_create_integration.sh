#!/usr/bin/env bash
set -euo pipefail

# Create a new integration named "hello" in the current directory.

PROJECT_DIR="${PROJECT_DIR:-$(pwd)}"

echo "Clicking Create"
wso2ipw click "g:getByRole('button', {name: 'Create', exact: true})"

echo "Waiting for Create Integration form"
wso2ipw wait-for-text "Integration Name"

echo "Filling integration name"
wso2ipw fill "g:getByRole('textbox', {name: 'Integration Name'})" "hello"

echo "Filling project path"
wso2ipw fill "g:getByRole('textbox', {name: 'Select Path'})" "$PROJECT_DIR"

echo "Clicking Create Integration"
wso2ipw click "g:getByRole('button', {name: 'Create Integration'})"

echo "Waiting for project to load"
wso2ipw wait-for-text "Entry Points"

echo "Integration created."
