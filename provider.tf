provider "vsphere" {
  vsphere_server       = var.vsphere_server
  user                 = var.vsphere_user
  password             = var.vsphere_password
  allow_unverified_ssl = true

}


#cloud-config
users: {
  - name: var.ssh_username
    ssh-authorized-keys:
      - ssh-rsa var.public_key
    sudo: [ALL=(ALL) NOPASSWD:ALL]
    groups: sudo
    shell: /bin/bash
}
