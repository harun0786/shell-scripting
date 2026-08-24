#!/bin/bash

# Task 4 - Install Packages with a Script

packages=("nginx" "curl" "wget")

# Root-user check
if [[ $EUID -ne 0 ]]; then
    echo "Error: run this script with sudo."
    echo "Usage: sudo ./install_packages.sh"
    exit 1
fi

# Detect package manager
if command -v dpkg >/dev/null 2>&1 && command -v apt-get >/dev/null 2>&1; then
    PACKAGE_TYPE="debian"

elif command -v rpm >/dev/null 2>&1 && command -v dnf >/dev/null 2>&1; then
    PACKAGE_TYPE="dnf"

elif command -v rpm >/dev/null 2>&1 && command -v yum >/dev/null 2>&1; then
    PACKAGE_TYPE="yum"

else
    echo "[ERROR] Unsupported package management system."
    exit 1
fi

# Process each package
for package in "${packages[@]}"
do
    if [[ "$PACKAGE_TYPE" == "debian" ]]; then

        if dpkg -s "$package" >/dev/null 2>&1; then
            echo "[INSTALLED] $package is already installed."
        else
            echo "[MISSING] Installing $package..."

            if apt-get install -y "$package"; then
                echo "[SUCCESS] $package was installed."
            else
                echo "[ERROR] $package installation failed."
                exit 1
            fi
        fi

    else

        if rpm -q "$package" >/dev/null 2>&1; then
            echo "[INSTALLED] $package is already installed."
        else
            echo "[MISSING] Installing $package..."

            if [[ "$PACKAGE_TYPE" == "dnf" ]]; then
                if dnf install -y "$package"; then
                    echo "[SUCCESS] $package was installed."
                else
                    echo "[ERROR] $package installation failed."
                    exit 1
                fi

            elif [[ "$PACKAGE_TYPE" == "yum" ]]; then
                if yum install -y "$package"; then
                    echo "[SUCCESS] $package was installed."
                else
                    echo "[ERROR] $package installation failed."
                    exit 1
                fi
            fi
        fi
    fi
done

echo "All packages processed successfully."
exit 0
