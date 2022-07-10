# Заменить на ID своего облака
# https://console.cloud.yandex.ru/cloud?section=overview

locals {
  instances ={
    "first_vm_for_${terraform.workspace}" = 1
    "second_vm_for_${terraform.workspace}" = 2
  }
}


locals {
  web_instance_count_map = {
    stage = 1
    prod = 2
  }
}

locals {
  web_instance_cores_map = {
    stage = 1
    prod = 2
  }

}

locals {
  web_instance_memory_map = {
    stage = 1
    prod = 2
  }

}

variable "token" {
  type = string
  description = "This is an example input variable using env variables."
}

variable "yandex_cloud_id" {
  default = "b1gtlo6uqrvrdckscbg8"
}

# Заменить на Folder своего облака
# https://console.cloud.yandex.ru/cloud?section=overview
variable "yandex_folder_id" {
  default = "b1g7jkg3844vv1nn5r1a"
}

variable "yandex_zone" {
  default = "ru-central1-b" 
}

variable "yandex_backend_s3" {
  default = "test-yc-bucket"
}

variable "yandex_service_account_id" {
  default = "aject26ihft85087ht1l"
}

variable "access_key" {
    type        = string
    description = "This is an example input variable using env variables."
}

variable "secret_key" {
    type        = string
    description = "This is an example input variable using env variables."
}

variable "yandex_vpc_network" {
  default = "enpbsku8oecgd8qfvc84"
}

variable "yandex_vpc_subnet" {
  default = "e2lclbkvfe9r5bd6m89g"
}

variable "yandex_v4_cidr_blocks" {
  default = [ "192.168.101.0/24", ]
}

# Заменить на ID своего образа
# ID можно узнать с помощью команды yc compute image list
variable "centos-7-base" {
  default = "fd8dib4t4ekaijvk09rp"
}

# url c img ubuntu 20.04.4 server amd64
variable "ubuntu-srv-amd64" {
  default = "https://releases.ubuntu.com/20.04/ubuntu-20.04.4-live-server-amd64.iso"
}
