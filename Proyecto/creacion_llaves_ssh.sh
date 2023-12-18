# Pregunta al usuario el ID del proyecto que desea
read -p "Ingresa el ID del proyecto: " ID_PROYECTO

# Configurar el script para que configure el proyecto seleccionado
gcloud config set project $ID_PROYECTO

#Creación de las llaves SSH generales para el proyecto, en este caso todas las sesiones a las instancias se deben hacer con esta clave
mkdir -p /root/.ssh
ssh-keygen -t rsa -f /root/.ssh/llave_ssh_proyecto

#Ingreso de llave publica al proyecto
gcloud compute project-info add-metadata   --metadata-from-file ssh-keys=/root/.ssh/llave_ssh_proyecto.pub

#Tomar en consideración que la carpeta .ssh es borrada automaticamente por google cloud si el proyecto no se encuentra en uso, en caso que google borre las credenciales
# Se deben volver a ejecutar los comandos relacionados a la generación de llaves SSH en el proyecto
