USE [ProjetoWeb]
GO

/****** Object:  Table [dbo].[tb_Processo]    Script Date: 25/03/2021 16:48:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_Processo](
	[idProcesso] [int] IDENTITY(1,1) NOT NULL,
	[nroProceso] [bigint] NOT NULL,
	[Autor] [varchar](90) NULL,
	[DtEntrada] [date] NULL,
	[DtEncerramento] [date] NULL,
	[idStatus] [int] NULL,
 CONSTRAINT [PK_tb_Processo] PRIMARY KEY CLUSTERED 
(
	[idProcesso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tb_Processo]  WITH CHECK ADD  CONSTRAINT [FK_tb_Processo_tb_Status] FOREIGN KEY([idStatus])
REFERENCES [dbo].[tb_Status] ([idStatus])
GO

ALTER TABLE [dbo].[tb_Processo] CHECK CONSTRAINT [FK_tb_Processo_tb_Status]
GO


