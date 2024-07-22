#!/bin/bash

# Array of URLs to download
urls=(
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-armv4l.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-armv5l.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-armv6l.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-armv7l.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-i586.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-m68k.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-mips.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-mipsel.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-powerpc.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-sh4.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-sparc.tar.bz2"
    "https://raw.githubusercontent.com/malol01/cross-compiler-for-mirai-archive/main/cross-compiler-x86_64.tar.bz2"
)

# Download and extract each file
for url in "${urls[@]}"; do
    filename=$(basename "$url")
    curl -O "$url"
    
    # Determine the file type and extract accordingly
    if [[ "$filename" == *.tar.gz ]]; then
        tar -xzf "$filename"
        rm "$filename"  # Remove the archive file after extraction
    elif [[ "$filename" == *.tar.bz2 ]]; then
        tar -xjf "$filename"
        rm "$filename"  # Remove the archive file after extraction
    else
        echo "Unknown file type for $filename"
    fi
done

# Display final message
echo "thanks to my creator malol01 :)"

# Delete the script itself
rm -- "$0"
