#!/bin/bash
HTML_PATH="/tmp/usr/share/nginx/html2"
STATIC_HTML_URL="https://github.com/vincent0214/static_html/releases/download/1.0/static_html.zip"

# 修改nginx默认页面
rm -rf ${HTML_PATH}
mkdir -p ${HTML_PATH}
wget ${STATIC_HTML_URL} -P  ${HTML_PATH}
unzip -o -d ${HTML_PATH}  ${HTML_PATH}/static_html.zip
rm ${HTML_PATH}/static_html.zip
mv ${HTML_PATH}/static_html/*  ${HTML_PATH}/ 
rm -rf ${HTML_PATH}/static_html
