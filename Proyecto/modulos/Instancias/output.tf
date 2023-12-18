output "prim-elastic-log_nat_ip" {
  value = google_compute_instance.prim-elastic-log.network_interface[0].access_config[0].nat_ip
}

output "sec-elastic-log_nat_ip" {
  value = google_compute_instance.sec-elastic-log.network_interface[0].access_config[0].nat_ip
}

output "prim-kibana_nat_ip" {
  value = google_compute_instance.prim-kibana.network_interface[0].access_config[0].nat_ip
}

output "sec-kibana_nat_ip" {
  value = google_compute_instance.sec-kibana.network_interface[0].access_config[0].nat_ip
}
