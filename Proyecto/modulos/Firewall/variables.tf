#Este archivo contiene las varibles utilizadas para el despliegue de reglas firewall
#
#El siguiente conjunto de reglas define el nombre de todas las reglas firewall a desplegar.
#Nombre de todas las reglas que permiten tráfico hacia la arquitectura

variable "nombre_de_regla_firewall_entrada_http" {
  type    = string
  default = "regla-entrada-http"
}

variable "nombre_de_regla_firewall_entrada_https" {
  type    = string
  default = "regla-entrada-https"
}

variable "nombre_de_regla_firewall_entrada_ssh" {
  type    = string
  default = "regla-entrada-ssh"
}

variable "nombre_de_regla_firewall_entrada_kibana" {
  type    = string
  default = "regla-entrada-kibana"
}

variable "nombre_de_regla_firewall_entrada_logstash" {
  type    = string
  default = "regla-entrada-logstash"
}

variable "nombre_de_regla_firewall_entrada_elasticsearch_clientes" {
  type    = string
  default = "regla-entrada-elasticsearch-clientes"
}

variable "nombre_de_regla_firewall_entrada_elasticsearch_comunicacion_nodos" {
  type    = string
  default = "regla-entrada-elasticsearch-comunicacion-nodos"
}

variable "nombre_de_regla_firewall_entrada_icmp" {
  type    = string
  default = "regla-entrada-icmp"
}

variable "nombre_de_regla_firewall_entrada_rdp" {
  type    = string
  default = "regla-entrada-rdp"
}

variable "nombre_de_regla_firewall_entrada_ssh_externa" {
  type    = string
  default = "regla-entrada-ssh-externa"
}


#========================================================================
#Nombre de todas las reglas que permiten tráfico desde la arquitectura hacia afuera

variable "nombre_de_regla_firewall_salida_http" {
  type    = string
  default = "regla-salida-http"
}

variable "nombre_de_regla_firewall_salida_https" {
  type    = string
  default = "regla-salida-https"
}

variable "nombre_de_regla_firewall_salida_ssh" {
  type    = string
  default = "regla-salida-ssh"
}

variable "nombre_de_regla_firewall_salida_kibana" {
  type    = string
  default = "regla-salida-kibana"
}

variable "nombre_de_regla_firewall_salida_logstash" {
  type    = string
  default = "regla-salida-logstash"
}

variable "nombre_de_regla_firewall_salida_elasticsearch_clientes" {
  type    = string
  default = "regla-salida-elasticsearch-clientes"
}

variable "nombre_de_regla_firewall_salida_elasticsearch_comunicacion_nodos" {
  type    = string
  default = "regla-salida-elasticsearch-comunicacion-nodos"
}

variable "nombre_de_regla_firewall_salida_icmp" {
  type    = string
  default = "regla-salida-icmp"
}

variable "nombre_de_regla_firewall_salida_rdp" {
  type    = string
  default = "regla-salida-rdp"
}
#========================================================================
#Variables que definen la direccion del tráfico
variable "direccion_entrada" {
  type    = string
  default = "INGRESS"
}

variable "direccion_salida" {
  type    = string
  default = "EGRESS"
}
#========================================================================
#Variable para definir prioridad
variable "prioridad" {
  type    = string
  default = "1000"
}
#========================================================================
#Variables que definen la descripcion de la regla
#Descripción de reglas de entrada
variable "descripcion_entrada_http" {
  type    = string
  default = "Permite las instancias de la red puedan recibir tráfico en el puerto 80"
}

variable "descripcion_entrada_https" {
  type    = string
  default = "Permite las instancias de la red puedan recibir tráfico en el puerto 443"
}

variable "descripcion_entrada_ssh" {
  type    = string
  default = "Permite que las instancias puedan ser conectadas de manera remota a través del puerto 22"
}

variable "descripcion_entrada_kibana" {
  type    = string
  default = "Permite que las instancias puedan tener comunicación con el servicio Kibana"
}

variable "descripcion_entrada_logstash" {
  type    = string
  default = "Permite que las instancias puedan tener comunicación con el servicio Logstash"
}

variable "descripcion_entrada_elasticsearch_clientes" {
  type    = string
  default = "Permite el ingreso de tráfico para hacer consultas en elasticsearch"
}

variable "descripcion_entrada_elasticsearch_comunicacion_nodos" {
  type    = string
  default = "Este puerto es utilizado para la comunicación de nodos en un clúster de Elasticsearch. Es el puerto por el cual los nodos se comunican entre sí para sincronizar datos y coordinar operaciones."
}

variable "descripcion_entrada_icmp" {
  type    = string
  default = "permite la entrada de tráfico icmp utilizado principalmente para el diagnóstico de red"
}

variable "descripcion_entrada_rdp" {
  type    = string
  default = "Permite la entrada de tráfico rdp para clientes windows. Esta regla se creó para probar la conectividad de un cliente prueba Windows"
}

variable "descripcion_entrada_ssh_externa" {
  type    = string
  default = "Permite conectarse a las instancias de manera remota"
}
#========================================================================
#Descripción de reglas de salida

variable "descripcion_salida_http" {
  type    = string
  default = "Permite las instancias de la red puedan enviar tráfico en el puerto 80"
}

variable "descripcion_salida_https" {
  type    = string
  default = "Permite las instancias de la red puedan enviar tráfico en el puerto 443"
}

variable "descripcion_salida_ssh" {
  type    = string
  default = "Permite que las instancias puedan conectarse de manera remota a través del puerto 22"
}

variable "descripcion_salida_kibana" {
  type    = string
  default = "Permite la salida del tráfico hacia kibana"
}

variable "descripcion_salida_logstash" {
  type    = string
  default = "Permite la salida del tráfico hacia logstash"
}

variable "descripcion_salida_elasticsearch_clientes" {
  type    = string
  default = "Permite la salida de tráfico hacia clientes de elasticsearch"
}

variable "descripcion_salida_elasticsearch_comunicacion_nodos" {
  type    = string
  default = "Permite la salida de tráfico entre nodos de elasticsearch"
}

variable "descripcion_salida_icmp" {
  type    = string
  default = "Permite la salida del tráfico icmp"
}

variable "descripcion_salida_rdp" {
  type    = string
  default = "Permite la salida del tráfico RDP para conectarse remotamente a instancias Windows"
}
#========================================================================
# las siguientes variables definen el tipo de protocolo utilizado

variable "protocolo_tcp" {
  type    = string
  default = "tcp"
}

variable "protocolo_udp" {
  type    = string
  default = "udp"
}

variable "protocolo_icmp" {
  type    = string
  default = "icmp"
}
#========================================================================
#A continuacion se definen todas las variables que definen el numero del puerto

variable "puerto_ssh" {
  type    = list
  default = ["22"]
}

variable "puerto_kibana" {
  type    = list
  default = ["5601"]
}

variable "puerto_logstash" {
  type    = list
  default = ["5044"]
}

variable "puerto_elasticsearch_clientes" {
  type    = list
  default = ["9200"]
}

variable "puerto_elasticsearch_comunicacion_nodos" {
  type    = list
  default = ["9300"]
}

variable "puerto_http" {
  type    = list
  default = ["80"]
}

variable "puerto_https" {
  type    = list
  default = ["443"]
}

variable "puerto_rdp" {
  type    = list
  default = ["3389"]
}
#========================================================================
#Variable que define el rango de IP a la cual va a afectar la regla
variable "rango_ipv4_origen" {
  type    = list
  default = [
		"10.194.0.0/16",
		"10.195.0.0/16",
	    ]
}
