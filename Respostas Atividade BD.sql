
-- Resposta da Atividade 1
select tb_Status.dsStatus as Descricao,count(tb_Processo.idProcesso) as Qtd_Processo from tb_Processo
inner join tb_Status on tb_Status.idStatus = tb_Processo.idStatus
group by tb_Status.dsStatus

-- Resposta da Atividade 2
select top 1 tb_Processo.idProcesso,tb_Processo.Autor,tb_Processo.DtEntrada,tb_Processo.DtEncerramento,tb_Status.dsStatus as Status,
tb_Andamento.idAndamento , tb_Andamento.dtAndamento from tb_Processo
inner join tb_Andamento on tb_Andamento.idProcesso = tb_Processo.idProcesso
inner join tb_Status on tb_Status.idStatus = tb_Processo.idStatus
where tb_Processo.DtEncerramento >= '2013-01-01' and DtEncerramento <= '2013-12-31'
order by tb_Andamento.dtAndamento desc

-- Resposta da Atividade 3
select * from (
select DtEncerramento,COUNT(DtEncerramento) as Qtd_Data from tb_Processo
where DtEncerramento is not null
group by DtEncerramento) x
where x.Qtd_Data > 5

-- Resposta da Atividade 4
