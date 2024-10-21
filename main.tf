resource "virtualbox_server" "VM_ISO" {
  count     = 2
  name      = format("VM_ISO-%02d", count.index + 1)
  basedir   = format("VM_ISO-%02d", count.index + 1)
  cpus      = 2
  memory    = 4096
  image     = "/home/administrator/Desktop/ubtunuimages/Win2019Eval.iso"  # Corrected image name
  disk_size = 100000                     # Disk size in MB
  os_id     = "Windows 2019 (64 bit)"    # Specify the OS ID

 network_adapter {
    network_mode = "natnetwork"
    nic_type        = "82540EM"
    name = "natnet5"
    cable_connected  = true               # Cable connection status
  }
}


resource "virtualbox_dhcp" "name" {
  network_name = "natnet5"
  network_mask = "255.255.0.0"
  server_ip = "10.0.1.2"
  lower_ip = "10.0.0.1"
  upper_ip = "10.0.0.30"
  enabled = true
}


resource "virtualbox_natnetwork" "name" {
  name = "natnet5"
  network = "10.0.0.0/16"
}


