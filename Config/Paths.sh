#!/bin/env bash

DOCS_PATH="$(dirname "$0")/Docs"
DOCS_FILE_LIST="$(ls $DOCS_PATH)"

CONFIG_PATH="$(dirname "$0")/Config"
CONFIG_FILE_LIST="$(ls $CONFIG_PATH)"

UTILITY_PATH="$(dirname "$0")/Utility"
UTILITY_FILE_LIST="$(ls $UTILITY_PATH)"

INSTALL_PATH="$($UTILITY_PATH)/Install"
INSTALL_FILE_LIST="$(ls $INSTALL_PATH)"