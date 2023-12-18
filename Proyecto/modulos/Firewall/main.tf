#El siguente archivo define el despliegue de todas las reglas firewall de la arquitectura
#Conjunto de reglas firewall de entrada
resource "google_compute_firewall" "regla_firewall_permitir_entrada_http" {
  name       = var.nombre_de_regla_firewall_entrada_http
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_http
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_http
  }

  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]


  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_https" {
  name       = var.nombre_de_regla_firewall_entrada_https
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_https
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_https
  }

  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]

  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_ssh" {
  name       = var.nombre_de_regla_firewall_entrada_ssh
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_ssh
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_ssh
  }

  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]

  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_kibana" {
  name       = var.nombre_de_regla_firewall_entrada_kibana
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_kibana
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_kibana
  }


  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]

  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_logstash" {
  name       = var.nombre_de_regla_firewall_entrada_logstash
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_logstash
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_logstash
  }


  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]


  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_elasticsearch_clientes" {
  name       = var.nombre_de_regla_firewall_entrada_elasticsearch_clientes
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_elasticsearch_clientes
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_elasticsearch_clientes
  }

  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]


  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_elasticsearch_comunicacion_nodos" {
  name       = var.nombre_de_regla_firewall_entrada_elasticsearch_comunicacion_nodos
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_elasticsearch_comunicacion_nodos
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_elasticsearch_comunicacion_nodos
  }


  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]


  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_icmp" {
  name       = var.nombre_de_regla_firewall_entrada_icmp
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_icmp
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_icmp
  }


  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]


  source_ranges = [
			"0.0.0.0/0"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_entrada_rdp" {
  name       = var.nombre_de_regla_firewall_entrada_rdp
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_entrada
  priority   = var.prioridad
  description = var.descripcion_entrada_rdp
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_rdp
  }


  destination_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]


  source_ranges = [
			"0.0.0.0/0"
		  ]
}
#========================================================================
##Conjunto de reglas firewall de salida

resource "google_compute_firewall" "regla_firewall_permitir_salida_http" {
  name       = var.nombre_de_regla_firewall_salida_http
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_http
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_http
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_https" {
  name       = var.nombre_de_regla_firewall_salida_https
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_https
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_https
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_ssh" {
  name       = var.nombre_de_regla_firewall_salida_ssh
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_ssh
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_ssh
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_kibana" {
  name       = var.nombre_de_regla_firewall_salida_kibana
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_kibana
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_kibana
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_logstash" {
  name       = var.nombre_de_regla_firewall_salida_logstash
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_logstash
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_logstash
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_elasticsearch_clientes" {
  name       = var.nombre_de_regla_firewall_salida_elasticsearch_clientes
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_elasticsearch_clientes
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_elasticsearch_clientes
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_elasticsearch_comunicacion_nodos" {
  name       = var.nombre_de_regla_firewall_salida_elasticsearch_comunicacion_nodos
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_elasticsearch_comunicacion_nodos
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_elasticsearch_comunicacion_nodos
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_icmp" {
  name       = var.nombre_de_regla_firewall_salida_icmp
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_icmp
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_icmp
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}

resource "google_compute_firewall" "regla_firewall_permitir_salida_rdp" {
  name       = var.nombre_de_regla_firewall_salida_rdp
  network    = data.terraform_remote_state.soc.outputs.network_self_link
  direction  = var.direccion_salida
  priority   = var.prioridad
  description = var.descripcion_salida_rdp
  project    = local.ID_PROYECTO

  allow {
    protocol = var.protocolo_tcp
    ports    = var.puerto_rdp
  }


  source_ranges = [
			data.terraform_remote_state.prim-elastic-log.outputs.prim-elastic-log_nat_ip,
			data.terraform_remote_state.prim-kibana.outputs.prim-kibana_nat_ip,
			data.terraform_remote_state.sec-elastic-log.outputs.sec-elastic-log_nat_ip,
			data.terraform_remote_state.sec-kibana.outputs.sec-kibana_nat_ip,
			"35.235.240.0/20",
                        "10.194.0.0/16",
                        "10.195.0.0/16"
		  ]
}


