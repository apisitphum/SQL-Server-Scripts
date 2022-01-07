-- objects (table , view, store procedure)
Select * From sys.objects ;

-- link servers
Exec sp_linkedservers ;

-- find text in store prcedure
Declare @FindText Varchar(1000) = 'FindText'

Select [Scehma]=schema_name(o.schema_id), o.Name, o.type 
  From sys.sql_modules m
  Inner Join sys.objects o
  On o.object_id = m.object_id
  Where m.definition Like '%' + @FindText + '%'
  
 -- table columns schemas
Declare @TableName Varchar(1000) = 'TableName'

Select * From INFORMATION_SCHEMA.COLUMNS 
    Where [TABLE_NAME] Like '%' + @TableName + '%'
