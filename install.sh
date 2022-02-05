#Usage: bash install.sh [QEMU_MANAGE_ROOT]
#!/bin/bash

if [ $# -lt 1 ]; then
  QEMU_MANAGE_ROOT=`pwd`
else
  QEMU_MANAGE_ROOT=$1
  if [ -d ${QEMU_MANAGE_ROOT}]; then
    echo "${QEMU_MANAGE_ROOT} exists. Are you sure you want to override the current installation (y/n)?"
    read OVERRIDE
    if [ $OVERRIDE -neq "y"]; then
      exit
    fi
  fi
fi

mkdir -p ${QEMU_MANAGE_ROOT}
cp -r . ${QEMU_MANAGE_ROOT}
echo export QEMU_MANAGE_ROOT=${QEMU_MANAGE_ROOT} >> ~/.bashrc
echo export PATH=${QEMU_MANAGE_ROOT}/bin:"\$PATH" >> ~/.bashrc
chmod +x ${QEMU_MANAGE_ROOT}/bin/qemu_manage
mkdir ${QEMU_MANAGE_ROOT}/vms
mkdir ${QEMU_MANAGE_ROOT}/disks
source ~/.bashrc
