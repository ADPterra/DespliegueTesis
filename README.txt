Como levantar tu propia arquitectura de monitoreo en Google Cloud

Paso 1: Habilitar facturacion en el proyecto deseado , en donde quieres desplegar tu arquitectura
Paso 2: Ingresar a la consola de Google Cloud
Paso 3: Descargar los repositorios del GitHub "Proyecto"
Paso 4: realizar esta serie de comandos:
	
 	A) git clone https://github.com/ADPterra/DespliegueTesis.git          ----> Busca y descarga los repositorios
        B) mv DespliegueTesis/Proyecto /home/                                 ----> Mueve la carpeta DespliegueTesis
        C) cd /home/Proyecto                                                  ----> Te vas a la ruta indicada
        D) chmod +x despliegue.sh despliegue_modulos_terraform.sh             ----> otorga permisos de ejecución 
        E) ./despliegue.sh                                                    ----> Despliegue de cuentas de servicio , claves ssh, etc
        F) ./despliegue_modulos_terraform.sh                                  ----> Despliegue modulos de Terraform
        G) cd /home/Proyecto/modulos/Instancias                               ----> Vamos al modulo de Instancias
        H) chmod +x automatizar_ips_externas_en_inventario_ansible.sh         ----> otorga permisos de ejecución
        I) ./automatizar_ips_externas_en_inventario_ansible.sh                ----> Otorga las IP de los host a Ansible para su configuración
        J) cd /home/Proyecto/conf_ansible                                     ----> Nos movemos a la ruta indicada
        K) chmod +x automatizacion_ansible.sh                                 ----> Otorgamos permisos de ejecución
        L) ./automatizacion_ansible.sh                                        ----> Desplegamos los servicios dentro de las maquinas creadas con Terraform

Paso 5: Entramos a Kibana a traves de HTTPS con su IP pública y el puerto 5601.
	
	Ejemplo: https://30.0.0.1:5601
