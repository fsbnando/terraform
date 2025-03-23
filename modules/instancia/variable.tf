variable "nome" {
  type = string
  description = "Nome da Maquina EC2"
}

variable "enviroment" {
    type = string
    description = "Ambiente da Instancia"
    default = "Dev"
  
}
