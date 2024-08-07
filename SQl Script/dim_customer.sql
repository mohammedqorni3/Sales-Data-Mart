if exists(select * from sys.tables where name='dim_customer' and type='U')
select'This Table Is Exists'
else
create table dim_customer(
   customer_key       INT NOT NULL IDENTITY(1, 1),
     customer_id        INT NOT NULL,
     customer_name      NVARCHAR(150),
     address1           NVARCHAR(100),
     address2           NVARCHAR(100),
     city               NVARCHAR(30),
     phone              NVARCHAR(25),
     birth_date date,
     marital_status char(10),
     gender char(1),
     yearly_income money,
     education varchar(50),
     source_system_code TINYINT NOT NULL,
     start_date         DATETIME NOT NULL DEFAULT (Getdate()),
     end_date           DATETIME NULL,
     is_current         TINYINT NOT NULL DEFAULT (1),
     CONSTRAINT pk_dim_customer PRIMARY KEY CLUSTERED (customer_key)
  );