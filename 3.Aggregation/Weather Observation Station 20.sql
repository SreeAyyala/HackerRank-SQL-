declare @cnt As integer 
select @cnt=count(*) from station
if (((SELECT @cnt)/2)<>0) 
begin 
SET @cnt=@cnt+1 
end
select @cnt=@cnt/2
create table #stn(latn decimal(10,4))
insert into #stn 
select cast(lat_n as decimal(10,4)) from station order by 1 asc 
create table #stn1(latn decimal(10,4))
insert into #stn1 
select TOP (@cnt) LATN FROM #stn order by 1 
select top 1 * from #stn1 order by 1 desc 