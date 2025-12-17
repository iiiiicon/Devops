#секция установки провайдера
terraform {
required_providers {
proxmox = {
source = "Telmate/proxmox"
version = "3.0.1-rc6"
}
}
}

#секция подключения к кластеру/ноде
provider "proxmox" {
pm_api_url = "https://.....6/api2/json"
pm_user = "root@pam"
pm_password = "....." 
pm_tls_insecure = true
}