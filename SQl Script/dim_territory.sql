if exists(select * from sys.tables where name='dim_territory' and type='U')
select'This Table Is Exists'
else
CREATE TABLE [dbo].[dim_territory](
	[territory_key] [int] IDENTITY(1,1) NOT NULL,
	[territory_id] [int] NOT NULL,
	[territory_name] [nvarchar](50) NULL,
	[territory_country] [nvarchar](400) NULL,
	[territory_group] [nvarchar](50) NULL,
	[source_system_code] [tinyint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
 	[is_current] [tinyint] NOT NULL,
   CONSTRAINT [pk_dim_territory] PRIMARY KEY CLUSTERED (territory_key)
)


