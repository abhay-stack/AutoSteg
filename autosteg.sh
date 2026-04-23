#!/bin/bash

# ./autosteg.sh image.jpg wordlist.txt

FILE=$1
WORDLIST=$2

echo "[+] Checking file: $FILE"
echo ""

echo "===== EXIFTOOL ====="
exiftool "$FILE"
echo ""

echo "===== STRINGS ====="
strings "$FILE" | head -50
echo ""

echo "===== BINWALK ====="
binwalk "$FILE"
echo ""

echo "===== ZSTEG ====="
zsteg "$FILE" 2>/dev/null
echo ""

echo "===== STEGHIDE INFO ====="
steghide info "$FILE"
echo ""

echo "===== STEGSEEK ====="
if [ -n "$WORDLIST" ]; then
    stegseek "$FILE" "$WORDLIST"
else
    echo "No wordlist given. Example: ./autosteg.sh image.jpg rockyou.txt"
fi
