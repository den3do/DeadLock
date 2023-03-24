Truncate Table  MNY應付帳款 
Truncate Table  MNY應收帳款 
go


Declare @sDate Nvarchar(6),@開始月份 Nvarchar(6),@結束月份 Nvarchar(6),@Date DateTime
--10504  ->201604
--結轉 >> 202104～202211
--Set @開始月份= '202207'  
--Set @結束月份= '202211'  

Set @開始月份= '201712'  
Set @結束月份= '202212'  

Set @Date = @開始月份+'01'

While @Date <= @結束月份+'01' 
begin
  Set @sDate = CONVERT(Nvarchar(6),@Date,112)
  Print @sDate


  exec cp應收付帳結算 @sDate,N'',N'',1,N'',1,0,1,0,0,5,N'詢價/60/0;採購/61/0;進貨/62/0;進退/63/0;進折/65/0;報價/72/0;訂單/73/0;銷貨/74/0;銷退/75/0;銷折/77/0;費用申請/66/0;費用支出/64/0;收入單/76/0;委外加工入庫/101/0;委外加工出庫/102/0;國外採購/611/0;進口到貨/612/0;國外報價/601/0;銷售確認/602/0;商業發票/603/0',0,0,N'NTD',N'SYSTEM'
  exec cp應收付帳結算 @sDate,N'',N'',0,N'',1,0,1,0,1,5,N'詢價/60/0;採購/61/0;進貨/62/0;進退/63/0;進折/65/0;報價/72/0;訂單/73/0;銷貨/74/0;銷退/75/0;銷折/77/0;費用申請/66/0;費用支出/64/0;收入單/76/0;委外加工入庫/101/0;委外加工出庫/102/0;國外採購/611/0;進口到貨/612/0;國外報價/601/0;銷售確認/602/0;商業發票/603/0',0,0,N'NTD',N'SYSTEM'



  Select  @sDate as 執行月份
  Set @Date = DATEADD (Month , 1, @Date)

  WAITFOR DELAY '00:00:02';  
end  
Set NoCount On

Select * From MNY應付帳款
Select * From MNY應收帳款