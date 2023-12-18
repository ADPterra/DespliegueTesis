# Para llamar al output del modulo de red, se extrajo desde el archivo tf.state del modulo
data "terraform_remote_state" "soc" {
  backend = "local"                                                               
  config = {
    path = "../Red/terraform.tfstate"  # ruta hacia el estado de desplieuge terraform de la red
  }
}

# locals.tf captura las variables guardadas en el archivo variables_iniciales.txt
# El proceso de captura identifica variables.
# Por ejemplo, tomando la variable ID_PROYECTO, se utiliza "^" y "$" para capturar la variable deseada en este caso  (?m)^ID_PROYECTO=(.*)$  
#esta definido para que lea la variable de la siguiente forma: "ID_PROYECTO=" y con "(.*)$" se captura el resto de la línea, la cual en nuestro caso contiene el valor de las variables
# la siguiente parte del código "!= null ?" en adelante, indica que si no encuentra ninguna variable, se entrega un valor nulo.

locals {
  variables_content = file("/home/Proyecto/variables_iniciales/variables_iniciales.txt")

  ID_PROYECTO = regex("(?m)^ID_PROYECTO=(.*)$", local.variables_content) != null ? regex("(?m)^ID_PROYECTO=(.*)$", local.variables_content)[0] : ""
  
}
