# Qemu Manage

A small convenience script for creating and launching QEMU VMs.

## Dependencies

* Python3
* scspkg
* jarvis_cd

### SCSPKG

```
git clone https://github.com/lukemartinlogan/scspkg.git
cd /path/to/scspkg
bash install.sh
source ~/.bashrc
```

### Environment Modules

```
scspkg create modules
cd `scspkg pkg-src modules`
curl -LJO https://github.com/cea-hpc/modules/releases/download/v4.7.1/modules-4.7.1.tar.gz
tar xfz modules-4.7.1.tar.gz
cd modules-4.7.1
./configure --prefix=`scspkg pkg-root modules`
make
make install
echo "source \`scspkg pkg-root modules\`/init/bash" >> ~/.bashrc
echo "module use \`scspkg modules-path\`" >> ~/.bashrc
source ~/.bashrc
```

### Jarvis CD

```{bash}
git clone https://github.com/lukemartinlogan/jarvis-cd.git
git clone https://github.com/scs-lab/jarvis-cd.git
cd jarvis-cd
bash install.sh
source ~/.bashrc
```

## Installation

```{bash}
cd /path/to/qemu_manage
bash install.sh [INSTALL_DIR (optional)]
source ~/.bashrc
```

### Uninstallation

```{bash}
rm -r $SCSPKG_ROOT
#Remove export commands from ~/.bashrc
```

## Usage

```{bash}
qemu_manage new_disk [disk_name] [disk_size (K/M/G)]
qemu_manage rm_disk [disk_name]
qemu_manage new_vm [vm_name]
qemu_manage rm_vm [vm_name]
qemu_manage list_vms
qemu_manage list_disks
qemu_mange start_vm [vm_name]
qemu_manage ssh_forward [vm_name] [host_port]
qemu_manage insert_iso [vm_name] [iso_path]
qemu_manage remove_iso [vm_name]
qemu_manage attach_disk [vm_name] [disk_type] [disk_path]
qemu_manage list_disks [vm_name]
qemu_manage detach_disk [vm_name] [disk_type] [disk_path]
qemu_manage set_ram [vm_name] [size (K/M/G)]
qemu_manage set_cores [vm_name] [num_cores]
qemu_manage set_graphics [vm_name] [graphics_mode]
```
