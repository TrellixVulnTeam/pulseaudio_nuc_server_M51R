#!/bin/sh
# -*- mode: shell-script; indent-tabs-mode: nil; sh-basic-offset: 4; -*-
# ex: ts=8 sw=4 sts=4 et filetype=sh

# user can easilly provide networkmanager files
# with wrong  permissions
# Force correct permissions.
# Otherwise it will not be possible to connect to nuc.
nm_dir=/etc/NetworkManager
sys_con_dir=$nm_dir"/system-connections"
if [ -d $nm_dir ]; then
  chown -R root:root $nm_dir
fi

if [ -d $sys_con_dir ]; then
   find $sys_con_dir -type f -exec chmod 600 '{}' \;
fi

