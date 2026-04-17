#!/usr/bin/env bash
set -euo pipefail

# Open WSO2 Integrator and dismiss the sign-in screen.

echo "Opening WSO2 Integrator"
wso2ipw open

echo "Waiting for welcome screen"
wso2ipw wait-for-text "Skip for now"

echo "Skipping sign-in"
wso2ipw click "h:getByRole('button', {name: 'Skip for now'})"

echo "Waiting for home screen"
wso2ipw wait-for-text "Create New Integration"

echo "App ready."
