Truncate Table  MNY���I�b�� 
Truncate Table  MNY�����b�� 
go


Declare @sDate Nvarchar(6),@�}�l��� Nvarchar(6),@������� Nvarchar(6),@Date DateTime
--10504  ->201604
--���� >> 202104��202211
--Set @�}�l���= '202207'  
--Set @�������= '202211'  

Set @�}�l���= '201712'  
Set @�������= '202212'  

Set @Date = @�}�l���+'01'

While @Date <= @�������+'01' 
begin
  Set @sDate = CONVERT(Nvarchar(6),@Date,112)
  Print @sDate


  exec cp�����I�b���� @sDate,N'',N'',1,N'',1,0,1,0,0,5,N'�߻�/60/0;����/61/0;�i�f/62/0;�i�h/63/0;�i��/65/0;����/72/0;�q��/73/0;�P�f/74/0;�P�h/75/0;�P��/77/0;�O�Υӽ�/66/0;�O�Τ�X/64/0;���J��/76/0;�e�~�[�u�J�w/101/0;�e�~�[�u�X�w/102/0;��~����/611/0;�i�f��f/612/0;��~����/601/0;�P��T�{/602/0;�ӷ~�o��/603/0',0,0,N'NTD',N'SYSTEM'
  exec cp�����I�b���� @sDate,N'',N'',0,N'',1,0,1,0,1,5,N'�߻�/60/0;����/61/0;�i�f/62/0;�i�h/63/0;�i��/65/0;����/72/0;�q��/73/0;�P�f/74/0;�P�h/75/0;�P��/77/0;�O�Υӽ�/66/0;�O�Τ�X/64/0;���J��/76/0;�e�~�[�u�J�w/101/0;�e�~�[�u�X�w/102/0;��~����/611/0;�i�f��f/612/0;��~����/601/0;�P��T�{/602/0;�ӷ~�o��/603/0',0,0,N'NTD',N'SYSTEM'



  Select  @sDate as ������
  Set @Date = DATEADD (Month , 1, @Date)

  WAITFOR DELAY '00:00:02';  
end  
Set NoCount On

Select * From MNY���I�b��
Select * From MNY�����b��