variable "vsphere_server" {
  default = "vca70.eveng.dev"
  type    = string
}

variable "vsphere_user" {
  default = "administrator@vsphere.local"
  type    = string
}

variable "vsphere_password" {
  default   = "Admin!2345"
  type      = string
  sensitive = true
}

variable "datacenter" {
  default = "NSX-T"
  type    = string
}

variable "cluster" {
  default = "prod"
  type    = string
}

variable "datastore" {
  default = "esxi1"
  type    = string
}

variable "network_name" {
  default = "DPortGroup"
  type    = string
}

variable "dns_server_list" {
  type   = string
  default = "8.8.8.8"
}


variable "template_folder" {
  default = "Templates"
  type    = string
}  
  
variable "template_name" {
  default = "Ubuntu-2204-Template-100GB-Thin"
  type    = string
}

variable "VM_Name" {
  description = "VM NAME?"

}
variable "vm_count" {
  description = "Number of instaces"
  type        = number

}
variable "varcountip" {
  default = 0
  type    = number

}

variable "domain" {
  description = "DOMAIN NAME?"
}
  
variable "ssh_username" {
  default = "ubuntu"
  type    = string
}

variable "public_key" {
  type       = string
  default    = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIGWI9K1SR2jZ75LtFbbGJjoVbOlmSPs4Vwr4Xn7cQDM8 jaschluckbier@gmail.com"  

}  
  
variable "private_IP" {
  description = "Avaliable IP"
  type        = list(string)
  default = [
    "",
    "192.168.0.5",
    "192.168.1.5",
    "192.168.2.5",
    "192.168.3.5",
    "192.168.4.5",
    "192.168.5.5",
    "192.168.6.5",
    "192.168.7.5",
    "192.168.8.5",
    "192.168.9.5",
  ]
}

variable "gateway_IP" {
  description = "Avaliable IP"
  type        = list(string)
  default = [
    "",
    "192.168.0.1",
    "192.168.1.1",
    "192.168.2.1",
    "192.168.3.1",
    "192.168.4.1",
    "192.168.5.1",
    "192.168.6.1",
    "192.168.7.1",
    "192.168.8.1",
    "192.168.9.1",
  ]
}
