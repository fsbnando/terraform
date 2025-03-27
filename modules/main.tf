module "EC2" {
  source = "./instancia"
  nome =   "maquina EC2"
  enviroment = "Prodiction"
}

moved {
  from = module.EC2.aws_instance.web
  to   = module.EC2.aws_instance.this
}
