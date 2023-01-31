#!/bin/bash
qemu-system-x86_64 -drive format=raw,file=target/x86_64-nightrust_os/debug/bootimage-nightrust_os.bin&
sleep 1
vncviewer 127.0.0.1:5900
pkill -f "qemu-system-x86_64"