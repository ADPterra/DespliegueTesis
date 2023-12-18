resource "google_compute_subnetwork" "subred_soc_primaria" {
  description                = var.descripcion_subred_primaria
  ip_cidr_range              = var.rango_ip_subred_primaria
  name                       = var.nombre_subred_primaria
  network                    = data.terraform_remote_state.soc.outputs.network_self_link
  private_ip_google_access   = var.acceso_google_ip_privada
  private_ipv6_google_access = var.acceso_google_ipv6_privada
  project                    = local.ID_PROYECTO
  purpose                    = var.proposito
  region                     = var.region_subred_primaria
  stack_type                 = var.tipo_stack
}

resource "google_compute_subnetwork" "subred_soc_secundaria" {
  description                = var.descripcion_subred_secundaria
  ip_cidr_range              = var.rango_ip_subred_secundaria
  name                       = var.nombre_subred_secundaria
  network                    = data.terraform_remote_state.soc.outputs.network_self_link
  private_ip_google_access   = var.acceso_google_ip_privada
  private_ipv6_google_access = var.acceso_google_ipv6_privada
  project                    = local.ID_PROYECTO
  purpose                    = var.proposito
  region                     = var.region_subred_secundaria
  stack_type                 = var.tipo_stack
}

