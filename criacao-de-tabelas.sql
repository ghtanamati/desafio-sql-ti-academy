CREATE DATABASE desafio;

USE desafio;

CREATE SCHEMA producao;

CREATE TABLE producao.Inspetor
(
	matricula_inspetor	int			primary key		identity(1,1)
,	nome			varchar(50)		not null
);

CREATE TABLE producao.Avaliacao
(
	codigo_avaliacao	char(2)			primary key
,	descricao		varchar(50)		not null
);

CREATE TABLE producao.TipoProduto
(
	id_tipo_produto		int			primary key		identity(1,1)
,	descricao		varchar(50)		not null
);

CREATE TABLE producao.Produto
(
	id_produto		varchar(10)		primary key
,	id_tipo_produto		int			not null
	foreign key (id_tipo_produto) references producao.TipoProduto(id_tipo_produto)
		ON DELETE CASCADE
		ON UPDATE CASCADE
,
);

CREATE TABLE producao.Ficha
(
	numero_ficha		int			primary key		identity(1,1)
,	data_inspecao		date			not null
,	matricula_inspetor	int			not null
	foreign key (matricula_inspetor) references producao.Inspetor(matricula_inspetor)
		ON DELETE CASCADE
		ON UPDATE CASCADE
,
);

CREATE TABLE producao.FichaProduto
(
	id_ficha_produto	int			primary key		identity(1,1)
,	horario_inicio		time			not null
,	horario_fim		time			not null
,	numero_ficha		int			not null
	foreign key (numero_ficha) references producao.Ficha(numero_ficha)
		ON DELETE CASCADE
		ON UPDATE CASCADE
,	id_produto		varchar(10)		not null
	foreign key (id_produto) references producao.Produto(id_produto)
		ON DELETE CASCADE
		ON UPDATE CASCADE
,	codigo_avaliacao	char(2)			not null
	foreign key (codigo_avaliacao) references producao.Avaliacao(codigo_avaliacao)
		ON DELETE CASCADE
		ON UPDATE CASCADE
,
);