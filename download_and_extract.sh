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
    elif [[ "$filename" == *.tar.bz2 ]]; then
        tar -xjf "$filename"
    else
        echo "Unknown file type for $filename"
    fi
    rm "$filename"  # Remove the archive file after extraction
done

# Move extracted directories to new names
mv cross-compiler-i586 i586
mv cross-compiler-m68k m68k
mv cross-compiler-mips mips
mv cross-compiler-mipsel mipsel
mv cross-compiler-powerpc powerpc
mv cross-compiler-sh4 sh4
mv cross-compiler-sparc sparc
mv cross-compiler-armv4l armv4l
mv cross-compiler-armv5l armv5l
mv cross-compiler-armv6l armv6l
mv cross-compiler-armv7l armv7l
mv cross-compiler-x86_64 x86_64

# Display final message
echo "thanks to my creator malol01 :)"

# Delete the script itself
rm -- "$0"
