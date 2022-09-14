CREATE DATABASE IF NOT EXISTS enem;

USE enem;



CREATE TABLE IF NOT EXISTS tb_items_prova (

CO_POSICAO varchar(255),
SG_AREA varchar(255),
CO_ITEM varchar(255),
TX_GABARITO varchar(255),
CO_HABILIDADE varchar(255),
IN_ITEM_ABAN varchar(255),
TX_MOTIVO_ABAN varchar(255),
NU_PARAM_A varchar(255),
NU_PARAM_B varchar(255),
NU_PARAM_C varchar(255),
TX_COR varchar(255),
CO_PROVA varchar(255),
TP_LINGUA varchar(255),
IN_ITEM_ADAPTADO varchar(255),
TP_VERSAO_DIGITAL varchar(255)

)ENGINE=MyISAM;
