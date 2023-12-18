#proceso de levantamiento de instancias
#Recurso prim-elastic-log
resource "google_compute_instance" "prim-elastic-log" {
  boot_disk {
    auto_delete = var.disco_auto_destruir
    device_name = var.disco_nombre_de_dispositivo_prim-elastic-log

    initialize_params {
      image = var.parametros_iniciales_imagen_os
      size  = var.parametros_iniciales_size
      type  = var.parametros_iniciales_tipo
    }

    mode = var.modo_disco
  }

  can_ip_forward      = var.reenvio_de_ip_falso
  deletion_protection = var.proteccion_contra_borrado
  enable_display      = var.habilitar_pantalla
  hostname            = var.nombre_host_prim-elastic-log

  labels = {
    goog-ec-src           = var.goog-ec-src
    goog-ops-agent-policy = var.goog-ops-agent-policy
  }

  machine_type = var.tipo_de_maquina

  metadata = {
    ssh-keys = "root:${file("/root/.ssh/llave_ssh_proyecto.pub")}"
  }

  name = var.identificador_nombre_instancia_prim-elastic-log

  network_interface {
    access_config {
      network_tier = var.conf_red_nivel_de_red
      
    }
    
    network = data.terraform_remote_state.soc.outputs.network_self_link
    network_ip = var.conf_red_ipv4_prim-elastic-log
    subnetwork = data.terraform_remote_state.subred_soc_primaria.outputs.subnetwork_self_link
  }

  scheduling {
    automatic_restart   = var.scheduling_reinicio_automatico
    on_host_maintenance = var.scheduling_mantenimiento_en_host
    preemptible         = var.scheduling_preemptible
    provisioning_model  = var.scheduling_modelo_de_provisionamiento
  }

  service_account {
    email  = local.EMAIL_CUENTA_DE_SERVICIO
    scopes = var.cuenta_de_servicio_alcances
  }

  shielded_instance_config {
     enable_integrity_monitoring = var.config_proteccion_instancia_habilitar_integridad_de_monitoreo
     enable_secure_boot          = var.config_proteccion_instancia_habilitar_inicio_seguro
     enable_vtpm                 = var.config_proteccion_instancia_habilitar_vtpm
  }


  tags = var.etiquetas_prim-elastic-log
  zone = var.zona_disponibilidad_subred_primaria
  project = local.ID_PROYECTO
}

#Recurso sec-elastic-log
resource "google_compute_instance" "sec-elastic-log" {
  boot_disk {
    auto_delete = var.disco_auto_destruir
    device_name = var.disco_nombre_de_dispositivo_sec-elastic-log

    initialize_params {
      image = var.parametros_iniciales_imagen_os
      size  = var.parametros_iniciales_size
      type  = var.parametros_iniciales_tipo
    }

    mode = var.modo_disco
  }

  can_ip_forward      = var.reenvio_de_ip_falso
  deletion_protection = var.proteccion_contra_borrado
  enable_display      = var.habilitar_pantalla
  hostname            = var.nombre_host_sec-elastic-log

  labels = {
    goog-ec-src           = var.goog-ec-src
    goog-ops-agent-policy = var.goog-ops-agent-policy
  }

  machine_type = var.tipo_de_maquina

  metadata = {
    ssh-keys = "root:${file("/root/.ssh/llave_ssh_proyecto.pub")}"
  }

  name = var.identificador_nombre_instancia_sec-elastic-log

  network_interface {
    access_config {
      network_tier = var.conf_red_nivel_de_red
      
    }
    
    network = data.terraform_remote_state.soc.outputs.network_self_link
    network_ip = var.conf_red_ipv4_sec-elastic-log
    subnetwork = data.terraform_remote_state.subred_soc_secundaria.outputs.secondary_subnetwork_self_link
  }

  scheduling {
    automatic_restart   = var.scheduling_reinicio_automatico
    on_host_maintenance = var.scheduling_mantenimiento_en_host
    preemptible         = var.scheduling_preemptible
    provisioning_model  = var.scheduling_modelo_de_provisionamiento
  }

  service_account {
    email  = local.EMAIL_CUENTA_DE_SERVICIO
    scopes = var.cuenta_de_servicio_alcances
  }

  shielded_instance_config {
     enable_integrity_monitoring = var.config_proteccion_instancia_habilitar_integridad_de_monitoreo
     enable_secure_boot          = var.config_proteccion_instancia_habilitar_inicio_seguro
     enable_vtpm                 = var.config_proteccion_instancia_habilitar_vtpm
  }


  tags = var.etiquetas_sec-elastic-log
  zone = var.zona_disponibilidad_subred_secundaria
  project = local.ID_PROYECTO
}

#Recurso prim-kibana
resource "google_compute_instance" "prim-kibana" {
  boot_disk {
    auto_delete = var.disco_auto_destruir
    device_name = var.disco_nombre_de_dispositivo_prim-kibana

    initialize_params {
      image = var.parametros_iniciales_imagen_os
      size  = var.parametros_iniciales_size
      type  = var.parametros_iniciales_tipo
    }

    mode = var.modo_disco
  }

  can_ip_forward      = var.reenvio_de_ip_falso
  deletion_protection = var.proteccion_contra_borrado
  enable_display      = var.habilitar_pantalla
  hostname            = var.nombre_host_prim-kibana

  labels = {
    goog-ec-src           = var.goog-ec-src
    goog-ops-agent-policy = var.goog-ops-agent-policy
  }

  machine_type = var.tipo_de_maquina

  metadata = {
    ssh-keys = "root:${file("/root/.ssh/llave_ssh_proyecto.pub")}"
  }

  name = var.identificador_nombre_instancia_prim-kibana

  network_interface {
    access_config {
      network_tier = var.conf_red_nivel_de_red
      
    }
    
    network = data.terraform_remote_state.soc.outputs.network_self_link
    network_ip = var.conf_red_ipv4_prim-kibana
    subnetwork = data.terraform_remote_state.subred_soc_primaria.outputs.subnetwork_self_link
  }

  scheduling {
    automatic_restart   = var.scheduling_reinicio_automatico
    on_host_maintenance = var.scheduling_mantenimiento_en_host
    preemptible         = var.scheduling_preemptible
    provisioning_model  = var.scheduling_modelo_de_provisionamiento
  }

  service_account {
    email  = local.EMAIL_CUENTA_DE_SERVICIO
    scopes = var.cuenta_de_servicio_alcances
  }

  shielded_instance_config {
     enable_integrity_monitoring = var.config_proteccion_instancia_habilitar_integridad_de_monitoreo
     enable_secure_boot          = var.config_proteccion_instancia_habilitar_inicio_seguro
     enable_vtpm                 = var.config_proteccion_instancia_habilitar_vtpm
  }


  tags = var.etiquetas_prim-kibana
  zone = var.zona_disponibilidad_subred_primaria
  project = local.ID_PROYECTO
}

#Recurso sec-kibana
resource "google_compute_instance" "sec-kibana" {
  boot_disk {
    auto_delete = var.disco_auto_destruir
    device_name = var.disco_nombre_de_dispositivo_sec-kibana

    initialize_params {
      image = var.parametros_iniciales_imagen_os
      size  = var.parametros_iniciales_size
      type  = var.parametros_iniciales_tipo
    }

    mode = var.modo_disco
  }

  can_ip_forward      = var.reenvio_de_ip_falso
  deletion_protection = var.proteccion_contra_borrado
  enable_display      = var.habilitar_pantalla
  hostname            = var.nombre_host_sec-kibana

  labels = {
    goog-ec-src           = var.goog-ec-src
    goog-ops-agent-policy = var.goog-ops-agent-policy
  }

  machine_type = var.tipo_de_maquina

  metadata = {
    ssh-keys = "root:${file("/root/.ssh/llave_ssh_proyecto.pub")}"
  }

  name = var.identificador_nombre_instancia_sec-kibana

  network_interface {
    access_config {
      network_tier = var.conf_red_nivel_de_red
      
    }
    
    network = data.terraform_remote_state.soc.outputs.network_self_link
    network_ip = var.conf_red_ipv4_sec-kibana
    subnetwork = data.terraform_remote_state.subred_soc_secundaria.outputs.secondary_subnetwork_self_link
  }

  scheduling {
    automatic_restart   = var.scheduling_reinicio_automatico
    on_host_maintenance = var.scheduling_mantenimiento_en_host
    preemptible         = var.scheduling_preemptible
    provisioning_model  = var.scheduling_modelo_de_provisionamiento
  }

  service_account {
    email  = local.EMAIL_CUENTA_DE_SERVICIO
    scopes = var.cuenta_de_servicio_alcances
  }

  shielded_instance_config {
     enable_integrity_monitoring = var.config_proteccion_instancia_habilitar_integridad_de_monitoreo
     enable_secure_boot          = var.config_proteccion_instancia_habilitar_inicio_seguro
     enable_vtpm                 = var.config_proteccion_instancia_habilitar_vtpm
  }


  tags = var.etiquetas_sec-kibana
  zone = var.zona_disponibilidad_subred_secundaria
  project = local.ID_PROYECTO
}
