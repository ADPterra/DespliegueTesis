# Configuracion inicial para iniciar el despliegue

# Pregunta al usuario el ID del proyecto que desea
read -p "Ingrese el ID del proyecto en el que desea desplegar la arquitectura " ID_PROYECTO

# Configurar el script para que configure el proyecto seleccionado
gcloud config set project $ID_PROYECTO


# Consulta al usuario la cuenta Google Cloud que tiene los permisos necesarios para desplegar la arquitectura
echo "Listando todas las cuentas Google Cloud:"
gcloud auth list --format="table(ACCOUNT)"
read -p "Ingrese la cuenta de usuario con permisos de dueño del proyecto (email): " CUENTA_ADMIN

# Habilitar todas las API necesarias
gcloud services enable compute.googleapis.com --project $ID_PROYECTO --account=$CUENTA_ADMIN
gcloud services enable iam.googleapis.com --project $ID_PROYECTO --account=$CUENTA_ADMIN
gcloud services enable servicenetworking.googleapis.com --project $ID_PROYECTO --account=$CUENTA_ADMIN
gcloud services enable cloudresourcemanager.googleapis.com --project $ID_PROYECTO --account=$CUENTA_ADMIN

# Creacion de una cuenta de servicio para el proyecto
NUEVA_CUENTA_DE_SERVICIO="api-despliegue-$(date +"%Y%m%d%H%M%S")"
EMAIL_CUENTA_DE_SERVICIO=$(gcloud iam service-accounts create $NUEVA_CUENTA_DE_SERVICIO --format='value(email)' --project=$ID_PROYECTO)
echo $EMAIL_CUENTA_DE_SERVICIO

# Entregando permisos a la cuenta de servicio (roles/owner)
gcloud projects add-iam-policy-binding $ID_PROYECTO --member="serviceAccount:$EMAIL_CUENTA_DE_SERVICIO" --role=roles/owner

# Creacion de directorio para las llaves ssh
mkdir -p /home/Proyecto/llave_cuenta_de_servicio

# Proceso de creacion de llaves ssh
LLAVE_CUENTA_DE_SERVICIO="/home/Proyecto/llave_cuenta_de_servicio/key_file.json"
gcloud iam service-accounts keys create $LLAVE_CUENTA_DE_SERVICIO --iam-account=$EMAIL_CUENTA_DE_SERVICIO --format=json

echo "Las configuraciones han sido completadas."

echo "Extrayendo los valores de las variables para su uso en terraform..."

mkdir -p /home/Proyecto/variables_iniciales

echo "ID_PROYECTO=$ID_PROYECTO" > /home/Proyecto/variables_iniciales/variables_iniciales.txt
echo "CUENTA_ADMIN=$CUENTA_ADMIN" >> /home/Proyecto/variables_iniciales/variables_iniciales.txt
echo "NUEVA_CUENTA_DE_SERVICIO=$NUEVA_CUENTA_DE_SERVICIO" >> /home/Proyecto/variables_iniciales/variables_iniciales.txt
echo "EMAIL_CUENTA_DE_SERVICIO=$EMAIL_CUENTA_DE_SERVICIO" >> /home/Proyecto/variables_iniciales/variables_iniciales.txt
echo "LLAVE_CUENTA_DE_SERVICIO=$LLAVE_CUENTA_DE_SERVICIO" >> /home/Proyecto/variables_iniciales/variables_iniciales.txt


#Creación de las llaves SSH generales para el proyecto, en este caso todas las sesiones a las instancias se deben hacer con esta clave
mkdir -p /root/.ssh
ssh-keygen -t rsa -f /root/.ssh/llave_ssh_proyecto

#Ingreso de llave publica al proyecto
gcloud compute project-info add-metadata   --metadata-from-file ssh-keys=/root/.ssh/llave_ssh_proyecto.pub

#Tomar en consideración que la carpeta .ssh es borrada automaticamente por google cloud si el proyecto no se encuentra en uso, en caso que google borre las credenciales
# Se deben volver a ejecutar los comandos relacionados a la generación de llaves SSH en el proyecto
