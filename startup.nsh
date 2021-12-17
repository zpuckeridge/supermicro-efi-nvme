@echo -off
cls

echo "=========== LOAD NVME DRIVE ==========="
load FS0:\NvmExpressDxe.efi

echo "=========== REMAP DRIVES ==========="
connect -r
set -v efishellmode 1.1.2
map -u

echo "=========== BOOTING PROXMOX ==========="
FS1:\EFI\BOOT\BOOTX64.EFI
