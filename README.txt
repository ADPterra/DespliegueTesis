Como levantar tu propia arquitectura de monitoreo en Google Cloud

Paso 1: Habilitar facturacion en el proyecto deseado , en donde quieres desplegar tu arquitectura
Paso 2: Ingresar a la consola de Google Cloud
Paso 3: Descargar los repositorios del GitHub "Proyecto"
Paso 4: realizar esta serie de comandos:
	
 	A) cd /home/Proyecto   	----> nos dirigimos a la ruta determinada
	B) ./despliegue.sh    	----> Creamos cuenta de servicio y claves SSH y los asociamos a un proyecto
	C) ./despliegue_modulos_terraform.sh   ----> Desplegamos la arquitectura con Terraform (Red, SubRed, Instancias, Reglas de Firewall, Rutas)
	D) cd /home/Proyecto/modulos/Instancias ----> Nos dirigimos a la ruta determinada
	E) ./automatizar_ips_externas_en_inventario_ansible.sh ---> Realizamos la automatizacion para colocar las IPs externas de las instancias al inventario de Ansible
	F) cd /home/Proyecto/conf_ansible -----> Nos dirigimos a la ruta determinada
	G) ./automatizacion_ansible.sh -----> Desplegamos la automatizacion de servicios de monitoreo en la arquitectura creada con Terraform

Paso 5: Entramos a Kibana a traves de HTTPS con su IP pública y el puerto 5601.
	
	Ejemplo: https://30.0.0.1:5601