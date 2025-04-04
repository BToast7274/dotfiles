#!/bin/bash

# Function to check if the user is root
check_root() {
    if [ "$(id -u)" -ne 0 ]; then
        echo "You must be root to run this script."
        exit 1
    fi
}

# Function to check if apt package manager is installed
check_apt() {
    if ! command -v apt &> /dev/null; then
        echo "Please install apt package manager to run this script"
        exit 1
    fi
}

# Function to check if Anaconda is installed
check_anaconda() {
    if command -v conda &> /dev/null; then
        echo "Anaconda is already installed."
        return 0
    else
        return 1
    fi
}

# Function to install Anaconda and its dependencies
install_anaconda() {
    echo "Updating package list..."
    apt update

    echo "Installing dependencies for Anaconda..."
    apt install -y \
        curl \
        wget \
        bzip2 \
        ca-certificates \
        libglib2.0-0 \
        libx11-6 \
        libxext6 \
        libsm6 \
        libxrender1

    # Download Anaconda installer
    ANACONDA_URL="https://repo.anaconda.com/archive/Anaconda3-2023.03-1-Linux-x86_64.sh"
    ANACONDA_INSTALLER="Anaconda3-2023.03-1-Linux-x86_64.sh"
    
    echo "Downloading Anaconda installer..."
    wget $ANACONDA_URL

    # Verify the installer
    if [ $? -ne 0 ]; then
        echo "Error downloading Anaconda installer."
        exit 1
    fi

    echo "Running Anaconda installer..."
    bash $ANACONDA_INSTALLER -b -p $HOME/anaconda3

    # Initialize conda
    echo "Initializing Anaconda..."
    $HOME/anaconda3/bin/conda init

    # Clean up the installer file
    rm -f $ANACONDA_INSTALLER

    echo "Anaconda has been installed successfully."
}

# Main script execution
check_root
check_apt

if ! check_anaconda; then
    install_anaconda
fi
