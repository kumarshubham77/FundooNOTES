CREATE Proc [dbo].[Registrtaion](      
@firstname varchar(50),      
@lastname varchar(50),      
@email varchar(50),      
@password varchar(50),      
@age int,      
@gender varchar(10)      
)      
as      
begin      
 declare @count int       
 declare @id int      
 set @count = (select IsNull(max(id),0) from userdata)      
 if(@count=0)      
 begin      
 set @id=1000      
 end      
 else      
 begin      
 set @id=@count+1      
 end      
 if Exists(Select * from userdata where email=@email)      
 begin       
 select 0 as flag       
 end      
 else      
 begin      
 begin try    
 --set @count=CONVERT(int ,@email)    
 insert into userdata (id,firstname,lastname,email,password,age,gender) values (@id,@firstname,@lastname,@email,@password,@age,@gender)      
 select 1 as flag    
 end try    
begin catch    
SELECT    
    ERROR_NUMBER() AS ErrorNumber,    
    ERROR_STATE() AS ErrorState,    
    ERROR_SEVERITY() AS ErrorSeverity,    
    ERROR_PROCEDURE() AS ErrorProcedure,    
    ERROR_LINE() AS ErrorLine,    
    ERROR_MESSAGE() AS ErrorMessage;    
    
 end catch    
 end      
end