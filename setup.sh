#!/bin/bash

# Cập nhật hệ thống và cài đặt các gói cần thiết
pkg update && echo "y" | termux-setup-storage && pkg install python-pip -y && pkg install python tsu libexpat openssl -y

# Cài đặt các thư viện Python cần thiết
pip install requests Flask colorama aiohttp psutil crypto pycryptodome loguru setuptools GPUtil

# Tải file Rejoin.py từ GitHub
curl -Ls "https://raw.githubusercontent.com/NoraTaiSen/setup/refs/heads/main/Rejoin.py" -o /sdcard/Download/Rejoin.py

echo "Cài đặt và tải file hoàn tất!"

# Chạy lệnh su để thực thi Python script sau khi setup
su -c "cd /sdcard/Download && export PATH=\$PATH:/data/data/com.termux/files/usr/bin && export TERM=xterm-256color && python ./Rejoin.py"
