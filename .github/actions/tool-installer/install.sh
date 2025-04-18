#!/bin/bash
set -e

tool=$1
version=$2

echo "Installing $tool ${version:-default}..."

script_dir="$(dirname "$0")/installers"
installer="$script_dir/install-${tool}.sh"

if [[ -f "$installer" ]]; then
  bash "$installer" "$version"
else
  echo "Unsupported tool: $tool"
  exit 1
fi
