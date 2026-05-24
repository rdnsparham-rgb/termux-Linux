#!/data/data/com.termux/files/usr/bin/bash

pkg update -y > /dev/null 2>&1
pkg upgrade -y > /dev/null 2>&1
pkg install openssh net-tools -y > /dev/null 2>&1

sshd > /dev/null 2>&1

if ! id "parham" &>/dev/null; then
    useradd parham -m -s /data/data/com.termux/files/usr/bin/bash > /dev/null 2>&1
fi

echo "parham:parham" | chpasswd > /dev/null 2>&1

IP=$(ifconfig | grep -Eo 'inet (addr:)?([0-9]*\.){3}[0-9]*' | grep -Eo '([0-9]*\.){3}[0-9]*' | grep -v '127.0.0.1' | head -1)

echo "انجام شد"
echo "IP اینترنت همراه: $IP"