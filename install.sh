#!/bin/bash

QEMU_MANAGE_ROOT=`pwd`
scspkg create qemu_manager
scspkg set-env qemu_manager QEMU_MANAGE_ROOT ${QEMU_MANAGE_ROOT}
scspkg prepend-env qemu_manager PATH ${QEMU_MANAGE_ROOT}/bin

echo "module load qemu_manager" >> ~/.bashrc
chmod +x ${QEMU_MANAGE_ROOT}/bin/qemu_manage
mkdir ${QEMU_MANAGE_ROOT}/vms
mkdir ${QEMU_MANAGE_ROOT}/disks
source ~/.bashrc
