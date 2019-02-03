# Output file.
output "instance1_address" {
  value = "${google_compute_instance.instance1.network_interface.0.access_config.0.nat_ip}"
}
output "instance2_address" {
  value = "${google_compute_instance.instance2.network_interface.0.access_config.0.nat_ip}"
}
output "instance3_address" {
  value = "${google_compute_instance.instance3.network_interface.0.access_config.0.nat_ip}"
}
