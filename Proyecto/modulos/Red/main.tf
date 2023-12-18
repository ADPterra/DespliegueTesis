resource "google_compute_network" "soc" {
  auto_create_subnetworks = false
  delete_default_routes_on_create = true
  description             = var.descripcion_red
  mtu                     = var.mtu_red
  name                    = var.nombre_red
  project                 = local.ID_PROYECTO
  routing_mode            = var.modo_enrutamiento_red
}
