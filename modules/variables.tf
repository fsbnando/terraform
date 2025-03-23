variable "Nome" {
  type = string
  description = "Nome da Maquina EC2"
}

variable "environment" {
  type = string
  description = "Ambiente da Instancia"
  default = "Desenvolvimento"
}