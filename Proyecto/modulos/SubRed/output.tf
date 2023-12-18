output "subnetwork_self_link" {
  value = google_compute_subnetwork.subred_soc_primaria.self_link
}

output "secondary_subnetwork_self_link" {
  value = google_compute_subnetwork.subred_soc_secundaria.self_link
}
