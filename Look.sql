 DECLARE @_MAX INT,@_i INT,@�Ǹ� varchar(20)
 
 SET @_i = 0
 SET @_MAX = 60 -- �n���ʹX�����
 WHILE (@_i<@_MAX)
 BEGIN
    --SELECT 1/0 AS ans  
    BEGIN TRAN
      Select Top 1 @�Ǹ� = �Ǹ� From �s�O�Ӷ� 	     
	    --�n�j�骺�y�k
	    Update �s�O�Ӷ� Set �Ƶ� = 'AAA;AA' Where �Ǹ� =@�Ǹ�
      WAITFOR DELAY '00:00:02';
    Commit Tran	
    Print @_i 	--�[1    

	Set @_i=@_i+1
 END
--*-*
Truncate Table ��ڼƶq������
go

Select * From ��ڼƶq������ 
 Where �t�ΦW�� ='�s�O�Ӷ�' 
   and �渹 <> 'XXXXXXXXXX'
   and ���ʤH�� <> 'Microsoft SQL Server Management Studio - �d��' 

