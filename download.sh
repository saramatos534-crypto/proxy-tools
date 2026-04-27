#!/bin/bash
# 代理工具下载脚本
# 用于从官方 GitHub 仓库下载最新版本

set -e

BASE_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "=== 代理工具下载脚本 ==="
echo "下载目录: $BASE_DIR"
echo ""

# Windows
echo ">>> 下载 Windows 客户端..."
mkdir -p "$BASE_DIR/windows"
cd "$BASE_DIR/windows"

wget -q "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v2.4.7/Clash.Verge_2.4.7_x64-setup.exe" -O Clash.Verge_2.4.7_x64-setup.exe || echo "Clash Verge 下载失败"
wget -q "https://github.com/2dust/v2rayN/releases/download/7.20.4/v2rayN-windows-64.zip" -O v2rayN-7.20.4.zip || echo "v2rayN 下载失败"
wget -q "https://github.com/MatsuriDayo/nekoray/releases/download/4.0.1/nekoray-4.0.1-2024-12-12-windows64.zip" -O nekoray-4.0.1-windows64.zip || echo "NekoRay 下载失败"
wget -q "https://github.com/SagerNet/sing-box/releases/download/v1.13.11/sing-box-1.13.11-windows-amd64.zip" -O sing-box-1.13.11.zip || echo "sing-box 下载失败"

echo "Windows 完成: $(ls -1 | wc -l) 个文件"

# macOS
echo ">>> 下载 macOS 客户端..."
mkdir -p "$BASE_DIR/macos"
cd "$BASE_DIR/macos"

wget -q "https://github.com/clash-verge-rev/clash-verge-rev/releases/download/v2.4.7/Clash.Verge_2.4.7_aarch64.dmg" -O Clash.Verge_2.4.7_aarch64.dmg || echo "Clash Verge macOS 下载失败"
wget -q "https://github.com/SagerNet/sing-box/releases/download/v1.13.11/sing-box-1.13.11-darwin-amd64.tar.gz" -O sing-box-1.13.11-darwin-amd64.tar.gz || echo "sing-box Intel 下载失败"
wget -q "https://github.com/SagerNet/sing-box/releases/download/v1.13.11/sing-box-1.13.11-darwin-arm64.tar.gz" -O sing-box-1.13.11-darwin-arm64.tar.gz || echo "sing-box ARM 下载失败"

echo "macOS 完成: $(ls -1 | wc -l) 个文件"

# Linux
echo ">>> 下载 Linux 客户端..."
mkdir -p "$BASE_DIR/linux"
cd "$BASE_DIR/linux"

wget -q "https://github.com/MatsuriDayo/nekoray/releases/download/4.0.1/nekoray-4.0.1-2024-12-12-linux-x64.AppImage" -O nekoray-4.0.1-linux-x64.AppImage || echo "NekoRay Linux 下载失败"
wget -q "https://github.com/SagerNet/sing-box/releases/download/v1.13.11/sing-box-1.13.11-linux-amd64.tar.gz" -O sing-box-1.13.11-linux-amd64.tar.gz || echo "sing-box x64 下载失败"
wget -q "https://github.com/SagerNet/sing-box/releases/download/v1.13.11/sing-box-1.13.11-linux-arm64.tar.gz" -O sing-box-1.13.11-linux-arm64.tar.gz || echo "sing-box ARM 下载失败"

echo "Linux 完成: $(ls -1 | wc -l) 个文件"

# Android
echo ">>> 下载 Android 客户端..."
mkdir -p "$BASE_DIR/android"
cd "$BASE_DIR/android"

wget -q "https://github.com/MetaCubeX/ClashMetaForAndroid/releases/download/v2.11.27/cmfa-2.11.27-meta-arm64-v8a-release.apk" -O cmfa-2.11.27-arm64.apk || echo "Clash Meta Android 下载失败"
wget -q "https://github.com/2dust/v2rayNG/releases/download/2.0.18/v2rayNG_2.0.18-fdroid_arm64-v8a.apk" -O v2rayNG-2.0.18-arm64.apk || echo "v2rayNG 下载失败"
wget -q "https://github.com/SagerNet/sing-box/releases/download/v1.13.11/SFA-1.13.11-legacy-android-5-universal.apk" -O SFA-1.13.11-universal.apk || echo "sing-box Android 下载失败"

echo "Android 完成: $(ls -1 | wc -l) 个文件"

echo ""
echo "=== 下载完成 ==="
echo "总文件数: $(find "$BASE_DIR" -type f ! -name "*.sh" ! -name "*.md" ! -name "*.html" | wc -l)"
