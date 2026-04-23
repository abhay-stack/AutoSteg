# AutoSteg

AutoSteg is a simple Bash script for quick steganography checks during CTFs and forensic challenges.

It automates basic analysis using common tools like:

* exiftool
* strings
* binwalk
* zsteg
* steghide
* stegseek

This helps speed up the initial enumeration process when analyzing suspicious files such as images, audio files, or hidden data containers.

---

## Features

* Extract metadata using `exiftool`
* Find readable hidden text using `strings`
* Detect embedded files using `binwalk`
* Analyze PNG/BMP hidden data using `zsteg`
* Check for steghide hidden content using `steghide`
* Bruteforce steghide passwords using `stegseek`

---

## Installation

Clone the repository:

```bash

cd autosteg
```

Make the script executable:

```bash
git clone https://github.com/abhay-stack/AutoSteg.git
chmod +x autosteg.sh
```

---

## Usage

Basic usage:

```bash
./autosteg.sh <file> <wordlist>
```

Example:

```bash
./autosteg.sh secret.jpg /usr/share/wordlists/rockyou.txt
```

If no wordlist is provided, `stegseek` will be skipped.

---

## Example Output

```bash
[+] Checking file: secret.jpg
===== EXIFTOOL =====
===== STRINGS =====
===== BINWALK =====
===== ZSTEG =====
===== STEGHIDE INFO =====
===== STEGSEEK =====
```

---

## Requirements

Make sure these tools are installed:

```bash
sudo apt install exiftool binwalk steghide strings
gem install zsteg
sudo apt install stegseek
```

> Note: `strings` usually comes pre-installed with most Linux systems.

---

## Best Use Cases

* CTF Challenges
* TryHackMe Rooms
* HackTheBox Machines
* Forensics Labs
* Basic Steganography Investigation

---

## Disclaimer

This tool is intended for educational purposes, CTFs, and authorized security testing only.

Do not use it on systems or files you do not have permission to analyze.

---

## Author

Created for quick steganography enumeration and learning purposes.
