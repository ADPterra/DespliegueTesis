cd /home/Proyecto/modulos/Red
terraform init
terraform apply -auto-approve
cd /home/Proyecto/modulos/SubRed
terraform apply -auto-approve
cd /home/Proyecto/modulos/Instancias
terraform apply -auto-approve
cd /home/Proyecto/modulos/Firewall
terraform apply -auto-approve
cd /home/Proyecto/modulos/Rutas
terraform apply -auto-approve
