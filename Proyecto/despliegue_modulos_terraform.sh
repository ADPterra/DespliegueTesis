cd /home/Proyecto/modulos/Red
terraform init
terraform apply -auto-approve
cd /home/Proyecto/modulos/SubRed
terraform init
terraform apply -auto-approve
cd /home/Proyecto/modulos/Instancias
terraform init
terraform apply -auto-approve
cd /home/Proyecto/modulos/Firewall
terraform init
terraform apply -auto-approve
cd /home/Proyecto/modulos/Rutas
terraform init
terraform apply -auto-approve
