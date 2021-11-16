module "stage" {
  source = "../01_test/02_module"

  name             = "yslee"
  region           = "ap-northeast-2"
  ava          = ["a", "c"]
  key              = "yslee-key"
  cidr_main        = "10.0.0.0/16"
  cidr_public      = ["10.0.0.0/24", "10.0.2.0/24"]
  cidr_private     = ["10.0.1.0/24", "10.0.3.0/24"]
  cidr_privatedb   = ["10.0.4.0/24", "10.0.5.0/24"]
  cidr_route       = "0.0.0.0/0"
  ipv6_cidr_blocks = "::/0"
  protocol_http    = "http"
  port_http        = 80
  protocol_http1   = "HTTP"
  protocol_tcp     = "tcp"
  protocol_ssh     = "ssh"
  port_ssh         = 22
  db_name          = "mysql"
  port_mysql       = 3306
  protocol_icmp    = "icmp"
  port_zero        = 0
  protocol_minus   = "-1"
  instance          = "t2.micro"
  private_ip       = "10.0.0.11"
  lb_type          = "application"
  storage_size     = 20
  storage_type     = "gp2"
  mysql_version    = "8.0"
  sql_engine       = "mysql"
  username         = "admin"
  password         = "It12345!"
  name_db          = "test"
  instance_db      = "db.t2.micro"

}
