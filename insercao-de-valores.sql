BEGIN TRANSACTION;

INSERT INTO producao.Inspetor(nome)
VALUES		('Gustavo')
,		('Gabriel')
,		('Augusto')
,		('Elton')
,		('Felipe')
,		('Kauan')
,		('Trancoso')

COMMIT;
SELECT * FROM producao.Inspetor;


BEGIN TRANSACTION;

INSERT INTO producao.Avaliacao(codigo_avaliacao,descricao)
VALUES		('OK', 'Liberado')
,		('EL', 'Problema el�trico')
,		('PT', 'Problema de pintura')
,		('PE', 'Problema na estrutura')
,		('TR', 'Todo rejeitado')

COMMIT;
SELECT * FROM producao.Avaliacao;


BEGIN TRANSACTION;

INSERT INTO producao.TipoProduto(descricao)
VALUES		('Geladeira')
,		('M�quina de lavar')
,		('Fog�o')
,		('Freezer')
,		('Frigobar')

COMMIT;
SELECT * FROM producao.TipoProduto;


BEGIN TRANSACTION;

INSERT INTO producao.Produto(id_produto,id_tipo_produto)
VALUES		('1.1.22',1)
,		('2.1.22',2)
,		('3.1.22',3)
,		('4.1.22',4)
,		('5.1.22',5)
,		('6.2.22',1)
,		('7.2.22',2)
,		('8.2.22',3)
,		('9.2.22',4)
,		('10.2.22',5)
,		('11.3.22',1)
,		('12.3.22',2)
,		('13.3.22',3)
,		('14.3.22',4)
,		('15.3.22',5)
,		('16.4.22',1)
,		('17.4.22',2)
,		('18.4.22',3)
,		('19.4.22',4)
,		('20.5.22',5)
,		('21.5.22',1)
,		('22.5.22',2)
,		('23.5.22',3)
,		('24.5.22',4)
,		('25.5.22',5)

COMMIT;
SELECT * FROM producao.Produto;


BEGIN TRANSACTION;

INSERT INTO producao.Ficha(data_inspecao,matricula_inspetor)
VALUES		('12-01-2022',1)
,		('12-02-2022',2)
,		('12-03-2022',3)
,		('12-04-2022',4)
,		('12-05-2022',5)
,		('12-06-2022',6)
,		('12-06-2022',7)
,		('12-07-2022',1)
,		('12-08-2022',2)
,		('12-09-2022',3)
,		('12-10-2022',4)
,		('12-11-2022',5)
,		('12-12-2022',6)
,		('12-12-2022',7)
,		('12-13-2022',1)
,		('12-14-2022',2)
,		('12-15-2022',3)
,		('12-16-2022',4)
,		('12-16-2022',7)
,		('12-17-2022',5)
,		('12-18-2022',6)
,		('12-18-2022',7)
,		('12-19-2022',1)
,		('12-20-2022',3)
,		('12-21-2022',5)
,		('12-22-2022',6)
,		('12-23-2022',7)

COMMIT;
SELECT * FROM producao.Ficha;


BEGIN TRANSACTION;

INSERT INTO producao.FichaProduto(horario_inicio,horario_fim,numero_ficha,id_produto,codigo_avaliacao)
VALUES		('08:00:00','10:30:00',1,'1.1.22','EL')
,		('10:00:00','12:25:00',1,'1.1.22','OK')
,		('13:00:00','15:20:00',2,'10.2.22','PE')
,		('16:00:00','17:00:00',2,'10.2.22','OK')
,		('08:00:00','11:05:00',3,'11.3.22','PT')
,		('10:30:00','12:00:00',3,'11.3.22','OK')
,		('11:00:00','13:10:00',4,'12.3.22','TR')
,		('16:15:00','17:00:00',4,'12.3.22','OK')
,		('08:00:00','10:00:00',5,'13.3.22','EL')
,		('10:05:00','12:00:00',5,'13.3.22','OK')
,		('13:00:00','16:30:00',6,'14.3.22','PE')
,		('16:00:00','17:00:00',6,'14.3.22','OK')
,		('09:00:00','12:00:00',7,'15.3.22','PT')
,		('13:00:00','15:00:00',7,'15.3.22','OK')
,		('08:00:00','09:30:00',8,'16.4.22','TR')
,		('10:00:00','12:00:00',8,'16.4.22','OK')
,		('08:00:00','11:15:00',9,'17.4.22','EL')
,		('16:00:00','17:45:00',9,'17.4.22','OK')
,		('09:00:00','11:30:00',10,'18.4.22','PE')
,		('16:00:00','17:00:00',10,'18.4.22','OK')
,		('08:00:00','09:15:00',11,'19.4.22','PT')
,		('11:00:00','12:45:00',11,'19.4.22','OK')
,		('09:30:00','11:15:00',12,'2.1.22','TR')
,		('16:00:00','17:00:00',12,'2.1.22','OK')
,		('09:30:00','11:15:00',13,'20.5.22','TR')
,		('16:00:00','17:00:00',13,'20.5.22','OK')
,		('13:00:00','14:30:00',14,'21.5.22','EL')
,		('16:15:00','17:00:00',14,'21.5.22','OK')
,		('08:15:00','11:00:00',15,'22.5.22','PE')
,		('13:15:00','16:45:00',15,'22.5.22','OK')
,		('08:15:00','11:00:00',16,'23.5.22','PT')
,		('13:15:00','16:45:00',16,'23.5.22','OK')
,		('08:15:00','11:00:00',17,'24.5.22','TR')
,		('13:15:00','16:45:00',17,'24.5.22','OK')
,		('08:15:00','11:00:00',18,'25.5.22','TR')
,		('13:15:00','16:45:00',18,'25.5.22','OK')
,		('13:15:00','16:45:00',19,'3.1.22','EL')
,		('13:15:00','16:45:00',19,'3.1.22','OK')
,		('13:15:00','16:45:00',20,'4.1.22','PE')
,		('13:15:00','16:45:00',20,'4.1.22','OK')
,		('13:15:00','16:45:00',21,'5.1.22','PT')
,		('13:15:00','16:45:00',21,'5.1.22','OK')
,		('13:15:00','16:45:00',22,'6.2.22','TR')
,		('13:15:00','16:45:00',22,'6.2.22','OK')
,		('13:15:00','16:45:00',23,'7.2.22','EL')
,		('13:15:00','16:45:00',23,'7.2.22','OK')
,		('13:15:00','16:45:00',24,'8.2.22','TR')
,		('13:15:00','16:45:00',24,'8.2.22','PT')
,		('13:15:00','16:00:00',27,'8.2.22','OK')
,		('13:15:00','16:45:00',25,'9.2.22','TR')
,		('13:15:00','16:00:00',25,'9.2.22','PT')
,		('13:15:00','16:00:00',26,'9.2.22','EL')
,		('13:15:00','16:00:00',26,'9.2.22','PE')
,		('13:15:00','16:00:00',27,'9.2.22','OK')

COMMIT;
SELECT * FROM producao.FichaProduto;