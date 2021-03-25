USE [ProjetoWeb]
GO

/****** Object:  Table [dbo].[tb_Status]    Script Date: 25/03/2021 16:49:08 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[tb_Status](
	[idStatus] [int] IDENTITY(1,1) NOT NULL,
	[dsStatus] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tb_Status] PRIMARY KEY CLUSTERED 
(
	[idStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


