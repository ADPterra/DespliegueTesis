#!/bin/bash

# Ir al directorio donde se necesita ejecutar el script
cd /usr/share/elasticsearch/bin
echo pwd
# Respuestas predefinidas para el comando elasticsearch-certutil http para la creacion de certificados
./elasticsearch-certutil http <<EOF
n
y
/usr/share/elasticsearch/elastic-stack-ca.p12
adp_terraform2023
4Y
y
prim-elastic-log
prim-elastic-log

y
10.194.0.20

y
n
y
sec-elastic-log
sec-elastic-log

y
10.195.0.20

y
n
y
prim-kibana
prim-kibana

y
10.194.0.30

y
n
y
sec-kibana
sec-kibana

y
10.195.0.30

y
n
n
clientes_adp_terraform2023
clientes_adp_terraform2023


EOF


