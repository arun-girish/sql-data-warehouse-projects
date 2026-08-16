

-- Warning
-- Running this script wil drop and recreadte entirewarehouse if the database is exist in db.

create database DataWarehouse;

use DataWarehouse;

if exists (select 1 from sys.databases where name = 'DataWarehouse')
begin
	alter database DataWarehouse set single_user with rollback immediate;
	drop database DataWarehouse;
end;
go
create schema bronze;
go
create schema silver;
go
create schema gold;
go
