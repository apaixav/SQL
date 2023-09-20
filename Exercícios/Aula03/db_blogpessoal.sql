CREATE TABLE [tb_Temas] (
	id bigint NOT NULL,
	descricao varbinary(255) NOT NULL,
  CONSTRAINT [PK_TB_TEMAS] PRIMARY KEY CLUSTERED
  (
  [id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_Postagens] (
	Id bigint NOT NULL,
	Titulo varchar(255) NOT NULL,
	Texto varchar(255) NOT NULL,
	Data datetimeoffset NOT NULL,
	Temaid bigint NOT NULL,
	Usuarioid bigint NOT NULL,
  CONSTRAINT [PK_TB_POSTAGENS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO
CREATE TABLE [tb_Usuarios] (
	Id bigint NOT NULL,
	Nome varchar(255) NOT NULL,
	Usuario varchar(255) NOT NULL,
	Senha varchar(255) NOT NULL,
	Foto varchar(5000) NOT NULL,
  CONSTRAINT [PK_TB_USUARIOS] PRIMARY KEY CLUSTERED
  (
  [Id] ASC
  ) WITH (IGNORE_DUP_KEY = OFF)

)
GO

ALTER TABLE [tb_Postagens] WITH CHECK ADD CONSTRAINT [tb_Postagens_fk0] FOREIGN KEY ([Temaid]) REFERENCES [tb_Temas]([id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_Postagens] CHECK CONSTRAINT [tb_Postagens_fk0]
GO
ALTER TABLE [tb_Postagens] WITH CHECK ADD CONSTRAINT [tb_Postagens_fk1] FOREIGN KEY ([Usuarioid]) REFERENCES [tb_Usuarios]([Id])
ON UPDATE CASCADE
GO
ALTER TABLE [tb_Postagens] CHECK CONSTRAINT [tb_Postagens_fk1]
GO


