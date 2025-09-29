#!/bin/env bash

UBUNTU_VER_GIT_INSTALL="$(apt-get install git)"
FEDORA_VER_GIT_INSTALL="$(dnf install git || yum install git)"

echo "=========================================="
echo "Select you want do installation OS Version"
echo "1. Ubuntu"
echo "2. Fedora"
echo "3. Back"
echo "=========================================="

PS3="Please select an Git installation OS Version : "
VERSIONS=("1.Ubuntu" "2.Fedora" "Back")
select SELECTED_VER in "${VERSIONS[@]}"; do
    case $SELECTED_VER in
        "1. Ubuntu")
            echo "Install to Ubuntu Version"
            $UBUNTU_VER_GIT_INSTALL
        ;;
        "2. Fedora")
            echo "Install to Fedora Version"
            $FEDORA_VER_GIT_INSTALL
        ;;
        "3. Back")
            break
        ;;
        *)
            echo "Please select one of the options."
            return 1
        ;;
    esac
done