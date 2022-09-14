CREATE DATABASE IF NOT EXISTS enem;

USE enem;



CREATE TABLE IF NOT EXISTS tb_notas_enem (

	NU_INSCRICAO varchar(20)  PRIMARY KEY,
	NU_NOTA_CN  varchar(20),
	NU_NOTA_CH  varchar(20),
	NU_NOTA_LC  varchar(20),
	NU_NOTA_MT  varchar(20),
	NU_NOTA_REDACAO  varchar(20)
	
)ENGINE=MyISAM;

