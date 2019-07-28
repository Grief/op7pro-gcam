#!/bin/sh
update_binary='META-INF/com/google/android/update-binary'
cd "$(dirname "$0")" &&\
echo 'Downloading the latest module_installer.sh...'
wget -q --show-progress -O"${update_binary}" https://raw.githubusercontent.com/topjohnwu/Magisk/master/scripts/module_installer.sh &&\
echo 'Archiving Magisk module...'
zip -qr - META-INF/ system/ install.sh module.prop > op7pro-gcam.zip && \
git checkout "${update_binary}" && \
echo 'op7pro-gcam.zip has been created. You can install it using Magisk Manager'