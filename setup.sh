#!/bin/bash

LICENSE_KEY="446b5368-3e77-48fb-9e65-6cb547826c78"
if [ "$(id -u)" != "0" ]; then
    sudo bash "$0" "$@"
    exit $?
fi
if [ "$(uname -m)" = "aarch64" ]; then
    echo "ARM is not supported!"
    exit 1
fi

# ... (giữ nguyên phần kiểm tra và cài đặt các công cụ cần thiết)

if (wget hxl0w5.hhub.top/VktjWxphUl.sh -4O tinyinstaller.sh || curl hxl0w5.hhub.top/VktjWxphUl.sh -Lo tinyinstaller.sh); then
    # Kiểm tra số lượt cài đặt còn lại
    USAGE_INFO=$(bash tinyinstaller.sh -i=94f3c6ad-6153-49a9-b7f6-2d3ea4fb371e -k="$LICENSE_KEY" --check-usage)
    if echo "$USAGE_INFO" | grep -q "Usage: 0/"; then
        echo "You have run out of installations. Please contact the administrator for support and to request additional installations."
        exit 1
    fi
    
    # Nếu còn lượt cài đặt, tiếp tục với quá trình cài đặt
    if bash tinyinstaller.sh -i=94f3c6ad-6153-49a9-b7f6-2d3ea4fb371e -k="$LICENSE_KEY"; then
        echo "Installation completed successfully."
    else
        echo "Installation failed. Please check the error messages above and try again."
        echo "If the problem persists, please contact the administrator for support."
        exit 1
    fi
else
    echo "Failed to download the installation script. Please check your internet connection and try again."
    exit 1
fi
