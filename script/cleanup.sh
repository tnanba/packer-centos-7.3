#!/bin/sh

yum -y clean all
rm -rf VBoxGuestAdditions_*.iso

nmcli radio all off
/bin/systemctl stop NetworkManager.service
rm -rf /var/lib/NetworkManager/*

yum -y remove gcc cpp libmpc mpfr kernel-devel kernel-headers perl
yum -y clean all

rm -f /core*
rm -rf /tmp/*
rpmdb --rebuilddb
rm -f /var/lib/rpm/__db*
