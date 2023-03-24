 DECLARE @_MAX INT,@_i INT,@序號 varchar(20)
 
 SET @_i = 0
 SET @_MAX = 60 -- 要產生幾筆資料
 WHILE (@_i<@_MAX)
 BEGIN
    --SELECT 1/0 AS ans  
    BEGIN TRAN
      Select Top 1 @序號 = 序號 From 製令細項 	     
	    --要迴圈的語法
	    Update 製令細項 Set 備註 = 'AAA;AA' Where 序號 =@序號
      WAITFOR DELAY '00:00:02';
    Commit Tran	
    Print @_i 	--加1    

	Set @_i=@_i+1
 END
--*-*
Truncate Table 單據數量異動檔
go

Select * From 單據數量異動檔 
 Where 系統名稱 ='製令細項' 
   and 單號 <> 'XXXXXXXXXX'
   and 異動人員 <> 'Microsoft SQL Server Management Studio - 查詢' 

