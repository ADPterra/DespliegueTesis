variable "descripcion_red" {
  type    = string
  description = "Dentro de esta VPC se contienen los nodos asociados a la implementación del proyecto"
  default = "Red de la herramienta de monitoreo"
}

variable "mtu_red" {
  type    = number
  default = 1460
}

variable "nombre_red" {
  type    = string
  default = "soc"
}

variable "modo_enrutamiento_red" {
  type    = string
  default = "GLOBAL"
}
