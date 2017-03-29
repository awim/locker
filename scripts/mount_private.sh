#!/bin/bash

#sudo mount -t ecryptfs ~/wLocker/.Private /wportal -o key=passphrase:passphrase_passwd=9faaf54e4e044935d13beb4249d5f88b:ecryptfs_unlink_sigs:ecryptfs_fnek_sig=8c7fdb244f0a9169:ecryptfs_key_bytes=16:ecryptfs_cipher=aes:ecryptfs_sig=da17c4518af90179:no_sig_cache

sudo printf "%s" "9faaf54e4e044935d13beb4249d5f88b" | sudo ecryptfs-add-passphrase --fnek

sudo mount -t ecryptfs /path/private/sourc/directory/.Private /path/target/to/mount -o key=passphrase:passphrase_passwd=9faaf54e4e044935d13beb4249d5f88b <<-EOF
aes
16
n
y
8c7fdb244f0a9169
yes
no
EOF
