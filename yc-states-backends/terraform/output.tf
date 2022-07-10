output "yc_cloud_id" {
  value = "${var.yandex_cloud_id}"
}

output "yc_folder_id" {
  value = "${var.yandex_folder_id}"
}

output "yc_zone" {
  value = "${var.yandex_zone}"  
}

output "yc_vpc_network" {
  value = "${var.yandex_vpc_network}"
}

output "yc_v4_cidr_blocks" {
  value = "${var.yandex_v4_cidr_blocks}"  
}

/*
output "internal_ip_address_vm_for_stage" {
  value = yandex_compute_instance.vm-for-stage.network_interface.0.ip_address
}

output "internal_ip_address_vm_for_prod" {
  value = yandex_compute_instance.vm-for-prod.network_interface.0.ip_address
}
*/