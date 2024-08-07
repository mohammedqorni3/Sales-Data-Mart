if exists(select * from sys.tables where name='dim_date' and type='U')
select'This Table Is Exists'
else
create table dim_date(
     date_key            INT NOT NULL,
     full_date           DATE NOT NULL,
     calendar_year       INT NOT NULL,
     calendar_quarter    INT NOT NULL,
     calendar_month_num  INT NOT NULL,
     calendar_month_name NVARCHAR(15) NOT NULL
     CONSTRAINT pk_dim_date PRIMARY KEY CLUSTERED (date_key)
  ); 