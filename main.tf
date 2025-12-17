resource "proxmox_vm_qemu" "..." {
  vmid        = ...
  name        = "..."
  target_node = "pve" 
  
  cores  = 1
  memory = 1024
  
  clone = "...."  
  
  disks {
    scsi {
      scsi0 {
        disk {
          storage = "..."
          size    = "..."
        }
      }
    }
  }
  
  network {
    id     = 0  
    bridge = "..."
    model  = "virtio"
  }
}