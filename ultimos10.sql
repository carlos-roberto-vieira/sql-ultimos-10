use softcom
go

-- crie uma tabela exemplo  
create table dados
(
	id			int					identity,
	uuid		varchar(100)		constraint df_uuid  default newid(),
	nome	    varchar(100)		not null
)
go

--- inseri 100 registros com o mesmo nome
insert into dados (nome) values ( 'CARLOS ROBERTO VIEIRA' )
go 100

 
-- aqui quero listar somente os 10 ultimos e colocar-los em ordem de id
with CTE as ( select top (10) * from dados order by id desc )     -- sacada é lista somenete 10 em ordem DECRESCENTE
select * from CTE											    -- busca na CTE		
order by id asc													-- agora ordena ASC








