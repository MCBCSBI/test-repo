--use MCBC_DW_Sey
--go

declare @procname nvarchar(100) = 'v_dim_product'
declare @sql nvarchar(max) =
'select * from dim_product'

begin try
exec(
'create view ' + @procname + 
' as '+ @sql
)
end try

begin catch
exec(
'alter view ' + @procname + 
' as '+ @sql
)
end catch
