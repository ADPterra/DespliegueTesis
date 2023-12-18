variable "descripcion_subred_primaria" {
  type    = string
  description = "Primera subred dentro del esquema HA"
  default = "subred-primaria"
}

variable "descripcion_subred_secundaria" {
  type    = string
  description = "Segunda subred dentro del esquema HA"
  default = "subred-secundaria"
}

variable "rango_ip_subred_primaria" {
  type    = string
  default = "10.194.0.0/16"
}

variable "rango_ip_subred_secundaria" {
  type    = string
  default = "10.195.0.0/16"
}

variable "nombre_subred_primaria" {
  type    = string
  default = "red-soc-primaria"
}

variable "nombre_subred_secundaria" {
  type    = string
  default = "red-soc-secundaria"
}

variable "acceso_google_ip_privada" {
  type    = string
  default = "true"
}

variable "acceso_google_ipv6_privada" {
  type    = string
  default = "DISABLE_GOOGLE_ACCESS"
}

variable "proposito" {
  type    = string
  default = "PRIVATE"
}

variable "region_subred_primaria" {
  type    = string
  default = "southamerica-west1"
}

variable "region_subred_secundaria" {
  type    = string
  default = "southamerica-west1"
}

variable "tipo_stack" {
  type    = string
  default = "IPV4_ONLY"
}
