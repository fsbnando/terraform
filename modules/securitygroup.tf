# Criar um Security Group
resource "aws_security_group" "my_sg" {
  name        = "my-security-group"
  description = "Security Group criado via Terraform"
  vpc_id      = "vpc-xxxxxxxx" # Substitua pelo ID da sua VPC

  # Regra de entrada para SSH (22) - Acesso limitado a um IP específico
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["192.168.1.1/32"] # Substitua pelo seu IP
  }

  # Regra de entrada para HTTP (80) - Aberto para todos
  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Regra de entrada para HTTPS (443) - Aberto para todos
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Regra de saída - Permite todo o tráfego
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my-security-group"
  }
}
