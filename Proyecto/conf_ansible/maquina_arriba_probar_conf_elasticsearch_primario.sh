#!/bin/bash

ansible-playbook -i inventory.ini instalar_rsync.yml
ansible-playbook -i inventory.ini instalacion_completa_elasticsearch.yml
#ansible-playbook -i inventory.ini creacion_de_ca_nodo_primario.yml
#ansible-playbook -i inventory.ini transferencia_de_certificado_nodo_principal_a_secundario.yml
#ansible-playbook -i inventory.ini configuracion_completa_elasticsearch_primario.yml
