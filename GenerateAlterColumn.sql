-- alter data type
Declare @TableName Varchar(1000)
Declare @DataType Varchar(100)

Select TABLE_NAME, COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH 
    , 'Alter Table ' + TABLE_NAME + ' Alter Column ' + COLUMN_NAME + ' varchar(' + Convert(Varchar,CHARACTER_MAXIMUM_LENGTH) + ')' As 'AlterScript'
    From INFORMATION_SCHEMA.COLUMNS Where [TABLE_NAME] = @TableName
    And DATA_TYPE = @DataType
