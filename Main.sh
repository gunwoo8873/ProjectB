#!/bin/env bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_PATH="$SCRIPT_DIR/Config"

source "$CONFIG_PATH/Paths.sh"

echo "현재 스크립트 경로: $(dirname "$0")"
echo "Docs 경로: $DOCS_PATH"
echo "Config 경로: $CONFIG_PATH"
