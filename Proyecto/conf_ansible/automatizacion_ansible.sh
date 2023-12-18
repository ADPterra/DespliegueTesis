sudo apt-get install -y ansible
sudo apt-get install -y rsync
ansible-playbook -i inventory.ini instalar_rsync.yml
ansible-playbook -i inventory.ini instalacion_completa_elasticsearch.yml
ansible-playbook -i inventory.ini creacion_de_ca_nodo_primario.yml
ansible-playbook -i inventory.ini instalacion_completa_elasticsearch_secundario.yml
ansible-playbook -i inventory.ini guardar_contrasenas_keystore_y_truststore_nodo_primario.yml
ansible-playbook -i inventory.ini transferencia_de_certificado_a_controlador_ansible_y_nodo_secundario.yml
ansible-playbook -i inventory.ini configuracion_completa_elasticsearch_primario.yml
ansible-playbook -i inventory.ini configuracion_firewall_para_nodos_elastic.yml
ansible-playbook -i inventory.ini configuracion_completa_elasticsearch_secundario.yml
ansible-playbook -i inventory.ini guardar_contrasenas_keystore_y_truststore_nodo_secundario.yml
ansible-playbook -i inventory.ini creacion_y_transferencia_de_token_de_enrolamiento.yml
ansible-playbook -i inventory.ini uso_de_token_de_enrolamiento.yml
ansible-playbook -i inventory.ini cambio_de_contrasena_elastic_ambos_nodos.yml
ansible-playbook -i inventory.ini cambio_de_contrasena_kibana_system_ambos_nodos.yml
ansible-playbook -i inventory.ini instalacion_completa_kibana.yml
ansible-playbook -i inventory.ini transferencia_automatizacion_creacion_certificados_http_para_clientes.yml
ansible-playbook -i inventory.ini unzip-primario-kibana.yml
ansible-playbook -i inventory.ini transferencia_http_y_pem_para_ssl.yml
ansible-playbook -i inventory.ini guardar_contrasenas_http_keystore.yml
ansible-playbook -i inventory.ini configuracion_completa_kibana_primario.yml
ansible-playbook -i inventory.ini configuracion_completa_kibana_secundario.yml
ansible-playbook -i inventory.ini inicio_kibanas.yml
ansible-playbook -i inventory.ini reinicio_elasticsearch.yml
ansible-playbook -i inventory.ini creacion_certificado_kibana_primario_https.yml
ansible-playbook -i inventory.ini creacion_certificado_kibana_secundario_https.yml
ansible-playbook -i inventory.ini transferencia_crt_y_llave_para_kibanas.yml
ansible-playbook -i inventory.ini configuracion_certificados_y_llave_kibana_primario.yml
ansible-playbook -i inventory.ini configuracion_certificados_y_llave_kibana_secundario.yml

