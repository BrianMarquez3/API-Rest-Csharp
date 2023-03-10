USE [tienda]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 13/02/2023 22:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripion] [varchar](50) NULL,
	[precio] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[editarProducts]    Script Date: 13/02/2023 22:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[editarProducts]
@id int,
@precio money
as
update Product
set precio=@precio
where id=@id
GO
/****** Object:  StoredProcedure [dbo].[eliminarProducts]    Script Date: 13/02/2023 22:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[eliminarProducts]
@id int
as
delete from Product
where id=@id
GO
/****** Object:  StoredProcedure [dbo].[insertarProducts]    Script Date: 13/02/2023 22:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[insertarProducts]
@descripcion varchar(50),
@precio money
as
insert into Product
values(@descripcion, @precio)
GO
/****** Object:  StoredProcedure [dbo].[mostrarProducts]    Script Date: 13/02/2023 22:31:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[mostrarProducts]
as
select *from Product
GO
