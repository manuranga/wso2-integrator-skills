#!/usr/bin/env bash
set -euo pipefail

# Run the integration and verify it responds with "Hello, World!".

echo "Clicking Run Integration"
wso2ipw click "h:getByRole('button', {name: 'Run Integration'})"

echo "Waiting for service to start (up to 60s)"
curl --retry 30 --retry-delay 2 --retry-connrefused \
     -sf http://localhost:9090/hello -o /dev/null

echo "Verifying response"
RESPONSE=$(curl -sf http://localhost:9090/hello)
echo "SUCCESS: $RESPONSE"
