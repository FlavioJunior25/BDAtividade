-- Registro Tb_status
insert into tb_Status values ('Pendente')
insert into tb_Status values ('Em Andamento')
insert into tb_Status values ('Concluido')

-- Registro Tb_Process
insert into tb_Processo values (87233,'Rafael Brito ',SYSDATETIME(),null,1)
insert into tb_Processo values (41563,'Caio Carlos ',SYSDATETIME(),null,3)
insert into tb_Processo values (45647,'Flavio Leite ',SYSDATETIME(),SYSDATETIME(),2)
insert into tb_Processo values (95463,'Rita Silva ',SYSDATETIME(),null,1)
insert into tb_Processo values (95461,'Carol Silva ','2013-03-10','2013-03-25',2)
insert into tb_Processo values (95645,'Eduardo Costa ','2013-02-10','2013-09-23',2)
insert into tb_Processo values (95845,'Aquino Silva ','2013-01-10','2013-05-21',2)
insert into tb_Processo values (95610,'Helena Costa ','2013-02-10','2013-09-23',2)
insert into tb_Processo values (95811,'Alice Silva ','2013-01-10','2013-09-23',2)
insert into tb_Processo values (95612,'Laura Costa ','2013-02-10','2013-09-23',2)
insert into tb_Processo values (95813,'Manuela Silva ','2013-01-10','2013-09-23',2)
insert into tb_Processo values (95614,'Sophia Costa ','2013-02-10','2013-09-23',2)
insert into tb_Processo values (95815,'Isabella Silva ','2013-01-10','2013-09-23',2)
insert into tb_Processo values (95616,'Heloísa Costa ','2013-02-10','2013-09-23',2)
insert into tb_Processo values (95817,'Lorena Silva ','2013-01-10','2013-09-23',2)

-- Registro tb_Andamento
insert into tb_Andamento values (6,SYSDATETIME(),'Processo ja foi encaminhado')
insert into tb_Andamento values (9,'2013-03-15','Processo ja foi encaminhado')
insert into tb_Andamento values (10,'2013-02-25','Processo ja foi encaminhado')
insert into tb_Andamento values (11,'2013-01-20','Processo ja foi encaminhado')

-- Query Consultar processos com a juntos com a descrição dos status 
select tb_Processo.idProcesso,tb_Processo.nroProceso,tb_Processo.Autor,tb_Processo.DtEntrada,tb_Processo.DtEncerramento,
tb_Status.dsStatus as Status,tb_Processo.idStatus from tb_Processo
inner join tb_Status on tb_Status.idStatus = tb_Processo.idStatus

-- Query Consultar andamento
select idAndamento,idProcesso,dtAndamento,dsMovimento from tb_Andamento

-- Query Consultar status 
select idStatus,dsStatus from tb_Status


