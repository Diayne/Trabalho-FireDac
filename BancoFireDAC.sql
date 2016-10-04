create table MULTAS (VEI_CODIGO integer not null, 
                     MLT_ITEM integer not null,
                     MLT_DATA date not null,
                     MLT_HORA time not null,
                     MLT_VALOR numeric(15,2) not null,
                     MLT_LOCAL varchar(100)
                     );

create table PROPRIETARIO (PRP_CODIGO integer not null,
                           PRP_NOME varchar (50) not null,
                           PRP_ENDERECO varchar (100)
                           );

create table VEICULO (VEI_CODIGO integer not null,
                      VEI_PLACA varchar (10) not null,
                      VEI_MARCA varchar (30) not null,
                      VEI_MODELO varchar (30) not null,
                      VEI_ANO integer not null,
                      PRP_CODIGO integer not null
                      );

alter table MULTAS add constraint PK_MULTAS primary key (VEI_CODIGO,MLT_ITEM);
alter table proprietario add constraint PK_PROPRIETARIO primary key (PRP_CODIGO);
alter table VEICULO add constraint PK_VEICULO primary key (VEI_CODIGO);
alter table MULTAS add constraint FK_MULTAS_VECULO foreign key (VEI_CODIGO)
   references proprietario (PRP_CODIGO) ON delete cascade ON update cascade;
alter table VEICULO add constraint FK_VECULO_PROPRIETARIO foreign key (PRP_CODIGO)
   references proprietario (PRP_CODIGO) ON delete cascade ON update cascade;
