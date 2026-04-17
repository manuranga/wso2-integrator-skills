#!/usr/bin/env bash
set -euo pipefail

# Add an HTTP Service artifact to the hello integration.

echo "Opening hello integration"
wso2ipw click "g:getByText('hello')"
wso2ipw wait-for-text "Your integration is empty"

echo "Clicking Add Artifact"
wso2ipw click "g:getByRole('button', {name: 'Add Artifact'})"

echo "Waiting for artifact picker"
wso2ipw wait-for-text "HTTP Service"

echo "Selecting HTTP Service"
wso2ipw click "g:getByText('HTTP Service')"

echo "Waiting for HTTP Service form"
wso2ipw wait-for-text "Service Base Path"

echo "Creating HTTP Service with default base path /"
wso2ipw click "g:getByRole('button', {name: 'Create', exact: true})"

echo "Waiting for service view"
wso2ipw wait-for-text "Add Resource"

echo "HTTP Service created."
