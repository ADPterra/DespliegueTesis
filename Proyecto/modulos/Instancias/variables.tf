#Variables usadas para la configuracion inicial del disco 
variable "disco_auto_destruir" {
  type    = string
  default = "true"
}
#===Conjunto de variables indicando el nombre para distintas instancias===
variable "disco_nombre_de_dispositivo_prim-elastic-log" {
  type    = string
  default = "prim-elastic-log"
}

variable "disco_nombre_de_dispositivo_sec-elastic-log" {
  type    = string
  default = "sec-elastic-log"
}

variable "disco_nombre_de_dispositivo_prim-kibana" {
  type    = string
  default = "prim-kibana"
}

variable "disco_nombre_de_dispositivo_sec-kibana" {
  type    = string
  default = "sec-kibana"
}
#========================================================================
variable "parametros_iniciales_imagen_os" {
  type    = string
  default = "projects/ubuntu-os-cloud/global/images/ubuntu-2004-focal-v20230918"
}

variable "parametros_iniciales_size" {
  type    = string
  default = "100"
}

variable "parametros_iniciales_tipo" {
  type    = string
  default = "pd-standard"
}

variable "modo_disco" {
  type    = string
  default = "READ_WRITE"
}

#Variables usadas para la configuracion general de las instancias
variable "reenvio_de_ip_falso" {
  type    = string
  default = "false"
}

variable "reenvio_de_ip_verdadero" {
  type    = string
  default = "true"
}

variable "proteccion_contra_borrado" {
  type    = string
  default = "false"
}

variable "habilitar_pantalla" {
  type    = string
  default = "false"
}
#==Conjunto de variables que configuran el nombre de los host

variable "nombre_host_prim-elastic-log" {
  type    = string
  default = "prim-elastic-log.vm-prim-elastic-log"
}

variable "nombre_host_sec-elastic-log" {
  type    = string
  default = "sec-elastic-log.vm-sec-elastic-log"
}

variable "nombre_host_prim-kibana" {
  type    = string
  default = "prim-kibana.vm-prim-kibana"
}

variable "nombre_host_sec-kibana" {
  type    = string
  default = "sec-kibana.vm-sec-kibana"
}
#========================================================================
variable "goog-ec-src" {
  type    = string
  default = "vm_add-tf"
}

variable "goog-ops-agent-policy" {
  type    = string
  default = "v2-x86-template-1-1-0"
}
variable "tipo_de_maquina" {
  type    = string
  default = "n2-standard-2"
}

#Conjunto de variables utilizadas para que terraform pueda diferenciar el nombre de las instancias
variable "identificador_nombre_instancia_prim-elastic-log" {
  type    = string
  default = "prim-elastic-log"
}

variable "identificador_nombre_instancia_sec-elastic-log" {
  type    = string
  default = "sec-elastic-log"
}

variable "identificador_nombre_instancia_prim-kibana" {
  type    = string
  default = "prim-kibana"
}

variable "identificador_nombre_instancia_sec-kibana" {
  type    = string
  default = "sec-kibana"
}
#========================================================================

#Variables utilizadas para la configuracion de red
#
#Las variables utilizadas para referenciar la red y subred se encuentran en el archivo main.tf
#
#
variable "conf_red_nivel_de_red" {
  type    = string
  default = "STANDARD"
}

#Conjunto de variables utilizadas para definir IPv4 
variable "conf_red_ipv4_prim-elastic-log" {
  type    = string
  default = "10.194.0.20"
}

variable "conf_red_ipv4_sec-elastic-log" {
  type    = string
  default = "10.195.0.20"
}

variable "conf_red_ipv4_prim-kibana" {
  type    = string
  default = "10.194.0.30"
}

variable "conf_red_ipv4_sec-kibana" {
  type    = string
  default = "10.195.0.30"
}
#========================================================================
#variables usadas para configurar la programacion de las instancias
variable "scheduling_reinicio_automatico" {
  type    = string
  default = "true"
}
variable "scheduling_mantenimiento_en_host" {
  type    = string
  default = "MIGRATE"
}
variable "scheduling_preemptible" {
  type    = string
  default = "false"
}
variable "scheduling_modelo_de_provisionamiento" {
  type    = string
  default = "STANDARD"
}

#Variable para configurar el alcance de la cuenta de servicio
#
#La cuenta de servicio definida se encuentra en el archivo main.tf
variable "cuenta_de_servicio_alcances" {
  type    = list
  default =  [
               "https://www.googleapis.com/auth/devstorage.read_only",
               "https://www.googleapis.com/auth/logging.write",
               "https://www.googleapis.com/auth/monitoring.write", 
               "https://www.googleapis.com/auth/service.management.readonly",
               "https://www.googleapis.com/auth/servicecontrol", 
               "https://www.googleapis.com/auth/trace.append"
             ]

}

#Conjunto de variables utilizadas para la configuracion de proteccion de las instancias
variable "config_proteccion_instancia_habilitar_integridad_de_monitoreo" {
  type    = string
  default = "true"
}
variable "config_proteccion_instancia_habilitar_inicio_seguro" {
  type    = string
  default = "true"
}
variable "config_proteccion_instancia_habilitar_vtpm" {
  type    = string
  default = "true"
}
#========================================================================
#Conjunto de variables para definir las etiquetas de las instancias
variable "etiquetas_prim-elastic-log" {
  type    = list
  default =   [
	       "http-server",
               "https-server",
               "lb-health-check",
	       "red-primaria-prim-elastic-log"
	      ]

}

variable "etiquetas_sec-elastic-log" {
  type    = list
  default =   [
		"http-server",
		 "https-server",
		 "lb-health-check",
		 "red-secundaria-sec-elastic-log"
	      ]

}

variable "etiquetas_prim-kibana" {
  type    = list
  default =   [
		"http-server",
		 "https-server",
		 "lb-health-check",
		 "red-primaria-prim-kibana"
	      ]

}

variable "etiquetas_sec-kibana" {
  type    = list
  default =   [
		"http-server",
		 "https-server", 
		"lb-health-check",
		 "red-secundaria-sec-kibana"
	      ]

}
#========================================================================
#Variables usadas para configurar la zona de disponibilidad de las instancias
variable "zona_disponibilidad_subred_primaria" {
  type    = string
  default = "southamerica-west1-a"
}

variable "zona_disponibilidad_subred_secundaria" {
  type    = string
  default = "southamerica-west1-b"
}
#========================================================================
#La variable relacionada con el ID del proyecto se encuentra en el archivo main.tf
