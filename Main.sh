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


function SelectMenu() {
    while true; do
        echo "=============================="
        echo "Select Menu"
        echo "1. Installation"
        echo "2. Uninstallation"
        echo "3. Update"
        echo "4. Options"
        echo "5. Exit"
        echo "=============================="

        # User Select Menu
        options=("Installation" "Uninstallation" "Update" "Options" "Exit")
        PS3="Select Menu: "
        select USER_SELECT_OPTION in "${options[@]}"; do
            case $USER_SELECT_OPTION in
                "Installation")
                    echo "You selected Installation."
                    # Call Installation function or script here
                    ;;
                "Uninstallation")
                    echo "You selected Uninstallation."
                    # Call Uninstallation function or script here
                    ;;
                "Update")
                    echo "You selected Update."
                    # Call Update function or script here
                    ;;
                "Options")
                    echo "You selected Options."
                    # Call Options function or script here
                    ;;
                "Exit")
                    echo "Exiting..."
                    exit 0
                    ;;
                *)
                    echo "Invalid option. Please try again."
                    ;;
            esac
            break
        done
    done
}