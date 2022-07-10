terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.75.0"

  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "test-yc-bucket"
    region                      = "ru-central1-b"
    key                         = "terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
  }

}

resource "yandex_compute_instance" "main" {
#  name = "vm-for-${terraform.workspace}"
#  count = local.web_instance_count_map[terraform.workspace] 

  for_each = local.instances

  resources {
    cores  = local.web_instance_cores_map[terraform.workspace]
    memory = local.web_instance_memory_map[terraform.workspace]
  }

  boot_disk {
    initialize_params {
      image_id = "fd8q7cikvj0mggcs886d"
    }
  }

  network_interface {
    subnet_id = var.yandex_vpc_subnet
    nat       = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file("~/.ssh/id_rsa.pub")}"
  }
}





