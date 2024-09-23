#!/bin/bash

# サービスを再起動する
sudo systemctl restart httpd

# サービスが正常に再起動されたか確認する
if systemctl is-active --quiet httpd; then
  echo "Apache (httpd) is running."
else
  echo "Failed to restart Apache (httpd)." >&2
  exit 1
fi
