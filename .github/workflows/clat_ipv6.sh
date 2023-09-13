#!/bin/bash

# Function to print characters with delay
print_with_delay() {
    text="$1"
    delay="$2"
    for ((i = 0; i < ${#text}; i++)); do
        echo -n "${text:$i:1}"
        sleep $delay
    done
    echo
}

# Introduction animation
echo ""
echo ""
print_with_delay "clatipv6-installer by Smaodi" 0.1
echo ""
echo ""

# Install required packages
sudo apt-get update > /dev/null 2>&1
sudo apt-get install -y make git gcc tayga perl

# Download git and clone
git clone https://github.com/toreanderson/clatd.git

cd clatd
sudo make install

cpan Net::IP Socket6 IO::Socket::INET6 Net::DNS
sudo systemctl start clatd




