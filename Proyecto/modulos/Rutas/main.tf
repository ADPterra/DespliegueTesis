resource "google_compute_route" "ruta_hacia_internet" {
  name        = "ruta-hacia-internet"
  network     = data.terraform_remote_state.soc.outputs.network_self_link
  dest_range  = "0.0.0.0/0"
  priority    = 1000
  next_hop_gateway = "default-internet-gateway"  
  project     = local.ID_PROYECTO
}
