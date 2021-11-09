#!/bin/bash
# 下载网页模板到 文件夹/usr/share/nginx/html
rm -rf /usr/share/nginx/html
mkdir -p /usr/share/nginx/html
wget wget https://github.com/vincent0214/static_html/releases/download/1.0/static_html.zip -P  /usr/share/nginx/html
unzip -o -d /usr/share/nginx/html  /usr/share/nginx/html/static_html.zip
rm /usr/share/nginx/html/static_html.zip
mv /usr/share/nginx/html/static_html/*  /usr/share/nginx/html/ 
rm -r /usr/share/nginx/html/static_html