if exists(select * from sys.tables where name='dim_product' and type='U')
select'This Table Is Exists'
else
CREATE TABLE [dbo].[dim_product](
	[product_key] [int] IDENTITY(1,1) NOT NULL,
	[product_id] [int] NOT NULL,
	[product_name] [nvarchar](50) NULL,
	[Product_description] [nvarchar](400) NULL,
	[product_subcategory] [nvarchar](50) NULL,
	[product_category] [nvarchar](50) NULL,
	[color] [nvarchar](15) NULL,
	[model_name] [nvarchar](50) NULL,
	[reorder_point] [smallint] NULL,
	[standard_cost] [money] NULL,
	[source_system_code] [tinyint] NOT NULL,
	[start_date] [datetime] NOT NULL,
	[end_date] [datetime] NULL,
	[is_current] [tinyint] NOT NULL,
 CONSTRAINT [pk_dim_product] PRIMARY KEY CLUSTERED (product_key)
)


