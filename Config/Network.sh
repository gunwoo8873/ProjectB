#!/bin/env bash

# Firewall Switch
if sudo systemctl is-active --quiet firewalld; then
    FIREWALLD_STATUS="active"
else
    FIREWALLD_STATUS="inactive"
fi