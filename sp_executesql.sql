   Declare @Category Varchar(100) = 'SetDate'
        , @Subject Varchar(100) = 'ProjectSSIS'
        , @SqlString NVarchar(Max) = Null 
        , @ParmDefinition NVARCHAR(MAX) = Null 
      Set @SqlString = 'Select * FROM ETLs_CONFIG_MASTER where Category = @Category AND [Subject] = @Subject'
      Set @ParmDefinition = N'@Category Varchar(100) , @Subject Varchar(100)'
    Execute sp_executesql @SqlString, @ParmDefinition, @Category = @Category , @Subject = @Subject
