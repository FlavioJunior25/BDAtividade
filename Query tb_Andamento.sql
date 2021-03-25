USE [ProjetoWeb]
GO

/****** Object:  Table [dbo].[tb_Andamento]    Script Date: 25/03/2021 16:47:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_Andamento](
	[idAndamento] [int] IDENTITY(1,1) NOT NULL,
	[idProcesso] [int] NOT NULL,
	[dtAndamento] [date] NULL,
	[dsMovimento] [varchar](2000) NULL,
 CONSTRAINT [PK_tb_Andamento] PRIMARY KEY CLUSTERED 
(
	[idAndamento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[tb_Andamento]  WITH CHECK ADD  CONSTRAINT [FK_tb_Andamento_tb_Processo] FOREIGN KEY([idProcesso])
REFERENCES [dbo].[tb_Processo] ([idProcesso])
GO

ALTER TABLE [dbo].[tb_Andamento] CHECK CONSTRAINT [FK_tb_Andamento_tb_Processo]
GO


