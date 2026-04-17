#!/usr/bin/env bash
set -euo pipefail

# Add a GET /hello resource that returns "Hello, World!".

echo "Clicking Add Resource"
wso2ipw click "g:getByRole('button', {name: 'Add Resource'})"

echo "Waiting for method selector"
wso2ipw wait-for-text "Select HTTP Method"

echo "Selecting GET"
wso2ipw click "g:getByRole('button', {name: 'GET'})"

echo "Waiting for resource config form"
wso2ipw wait-for-text "Resource Path"

echo "Setting resource path to 'hello'"
wso2ipw fill "g:getByRole('textbox', {name: 'Resource Path'})" "hello"

echo "Saving resource"
wso2ipw click "g:getByRole('button', {name: 'Save'}).first()"

echo "Waiting for flow editor"
wso2ipw wait-for-text "Start"

echo "Clicking add node button"
wso2ipw click "g:getByRole('button', {name: 'empty-node-add-button-1'})"

echo "Waiting for node panel"
wso2ipw wait-for-text "Return"

echo "Selecting Return node"
wso2ipw click "g:getByRole('button', {name: 'Return'})"

echo "Waiting for Return config"
wso2ipw wait-for-text "Expression"

echo '==> Setting return expression to "Hello, World!"...'
wso2ipw fill "g:getByRole('textbox')" '"Hello, World!"'

echo "Saving return node"
wso2ipw click "g:getByRole('button', {name: 'Save'}).first()"

echo "Waiting for save to complete"
wso2ipw wait-for-text "Saving" --hidden

echo "Closing node panel"
wso2ipw press Escape
wso2ipw wait-for-text 'Hello, World!'

echo '==> Resource GET /hello with Return "Hello, World!" created.'
