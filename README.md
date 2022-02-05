# Qemu Manage

A small convenience script for creating and launching QEMU VMs.

## Dependencies

* Python3

## Installation

```{bash}
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
