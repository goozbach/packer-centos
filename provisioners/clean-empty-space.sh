#!/bin/bash		

# Saves ~25M
yum -y remove kernel-devel

echo "Clean YUM cache"
yum clean all

echo "Clean out all of the caching dirs"
rm -rf /var/cache/* /usr/share/doc/*

echo "Clean up unused disk space so compressed image is smaller."
cat /dev/zero > /tmp/zero.fill
sync
rm /tmp/zero.fill
