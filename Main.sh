#!/bin/env bash



SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
CONFIG_PATH="$SCRIPT_DIR/Config"

source "$CONFIG_PATH/Paths.sh"

echo "현재 스크립트 경로: $(dirname "$0")"
echo "Docs 경로: $DOCS_PATH"
echo "Docs Files: $DOCS_FILE_LIST"

echo "Config 경로: $CONFIG_PATH"
echo "Config Files: $CONFIG_FILE_LIST"

echo "Utility 경로: $UTILITY_PATH"
echo "Utility Files: $UTILITY_FILE_LIST"
