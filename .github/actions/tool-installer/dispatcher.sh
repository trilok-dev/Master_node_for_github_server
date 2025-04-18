#!/bin/bash
set -e

TOOL=$1
VERSION=$2

TOOL_PATH=".github/actions/tool-installer/tools/${TOOL}.yml"

if [[ ! -f "$TOOL_PATH" ]]; then
  echo " Tool installer not found: $TOOL_PATH"
  exit 1
fi

echo " Installing $TOOL (version: ${VERSION:-latest}) "

# Simulate dynamic usage by printing usage block
echo "::notice title=Tool::$TOOL"
echo "::notice title=Version::$VERSION"
echo "::notice title=Resolved File::$TOOL_PATH"


