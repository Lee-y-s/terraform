resource "aws_db_instance" "yslee_rds" {
  allocated_storage      = var.storage_size
  storage_type           = var.storage_type
  engine                 = var.sql_engine
  engine_version         = var.mysql_version
  instance_class         = var.instance_db
  name                   = var.name_db
  identifier             = var.name_db
  username               = var.username
  password               = var.password
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "${var.region}${var.ava[0]}"
  db_subnet_group_name   = aws_db_subnet_group.yslee_dbsb.id
  vpc_security_group_ids = [aws_security_group.yslee_sg.id]
  skip_final_snapshot    = true
  tags = {
    "Name" = "${var.name}-rds"
  }
}

resource "aws_db_subnet_group" "yslee_dbsb" {
  name       = "${var.name}-dbsb-group"
  subnet_ids = [aws_subnet.yslee_pridb[0].id, aws_subnet.yslee_pridb[1].id]
  tags = {
    "Name" = "${var.name}-dbsb-gp"
  }
}
