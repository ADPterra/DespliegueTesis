#!/bin/bash

# Extraccion de IP externas
prim_elastic_log_ip="$(terraform output -raw prim-elastic-log_nat_ip)"
sec_elastic_log_ip="$(terraform output -raw sec-elastic-log_nat_ip)"
prim_kibana_ip="$(terraform output -raw prim-kibana_nat_ip)"
sec_kibana_ip="$(terraform output -raw sec-kibana_nat_ip)"

# Actualizacion del archivo inventory.ini
cat <<EOL > /home/Proyecto/conf_ansible/inventory.ini
[elastic-log-cluster]
prim-elastic-log ansible_host=$prim_elastic_log_ip ansible_user=root ansible_ssh_private_key_file=/root/.ssh/llave_ssh_proyecto ansible_ssh_common_args='-o StrictHostKeyChecking=no'
sec-elastic-log ansible_host=$sec_elastic_log_ip ansible_user=root ansible_ssh_private_key_file=/root/.ssh/llave_ssh_proyecto ansible_ssh_common_args='-o StrictHostKeyChecking=no'

[kibana-cluster]
prim-kibana ansible_host=$prim_kibana_ip ansible_user=root ansible_ssh_private_key_file=/root/.ssh/llave_ssh_proyecto ansible_ssh_common_args='-o StrictHostKeyChecking=no'
sec-kibana ansible_host=$sec_kibana_ip ansible_user=root ansible_ssh_private_key_file=/root/.ssh/llave_ssh_proyecto ansible_ssh_common_args='-o StrictHostKeyChecking=no'
EOL

echo "Archivo de inventario ansible actualizado"
