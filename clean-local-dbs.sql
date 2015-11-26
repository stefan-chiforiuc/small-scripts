USE MASTER

declare databases cursor for 
	SELECT dtb.name AS [Name]
	FROM
	master.sys.databases AS dtb
	WHERE [Name] Like 'PROTEUS%';
declare @db sysname
declare @sql varchar (5000)

open databases
fetch next from databases into @db

while @@fetch_status = 0
begin

	set @sql = 'sp_detach_db ' + @db
	exec (@sql)
	fetch next from databases into @db

end

close databases
deallocate databases