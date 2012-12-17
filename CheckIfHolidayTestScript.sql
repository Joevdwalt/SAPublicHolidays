declare 
	@datetime DATETIME

SET @datetime = '2011-12-31'

DECLARE
	@table TABLE
	(
		RowId INT IDENTITY PRIMARY KEY,
		DateValue DATETIME,
		IsHoliday INT
	)

while (@datetime < '2013-01-01')
begin 
	set @datetime = DATEADD (dd,1,@datetime)
	
	insert into @table
	(DateValue, IsHoliday)
	values
	(@datetime, dbo.CheckIfHoliday(@datetime))
	
	
	
	
end
select * from @table where isholiday = 1