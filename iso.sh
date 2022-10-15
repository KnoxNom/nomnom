#!/bin/sh
set -e
. ./build.sh
 
mkdir -p isoroot
mkdir -p isoroot/boot
mkdir -p isoroot/boot/grub
 
cp sysroot/boot/nomnom.kernel isoroot/boot/nomnom.kernel
cat > isoroot/boot/grub/grub.cfg << EOF
menuentry "nomnom" {
	multiboot /boot/nomnom.kernel
}
EOF
grub-mkrescue -o nomnom.iso isoroot