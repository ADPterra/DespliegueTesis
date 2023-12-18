# locals.tf

locals {
  variables_content = file("/home/Proyecto/variables_iniciales/variables_iniciales.txt")

  ID_PROYECTO = regex("(?m)^ID_PROYECTO=(.*)$", local.variables_content) != null ? regex("(?m)^ID_PROYECTO=(.*)$", local.variables_content)[0] : ""
}
