/*---------------------------------------------------------------------------------------------------------    
 created by: Shubham    
 created on :5 july 2020    
 Modifeied on:    
 modified by:    
 test: exec Notescreated 'shubham870940@gmail.com'    
------------------------------------------------------------------------------------------------------------*/


CREATE Proc Notescreated(            
@email varchar(50),      
@title varchar(50) = null,      
@descriptions varchar(50) = null,            
@images varchar(50) = null,
@reminder varchar(50) = null,
@isarchive varchar(50) = null,
@istrash varchar(50) = null,
@ispin varchar(50) = null,
@iscolor varchar(50) = null     
)      
as      
begin            
 if Exists(Select * from userdata where email=@email)      
 begin
 insert into notess(email,title,descriptions,images,reminder,isarchive,istrash,ispin,iscolor) values (@email,@title,@descriptions,@images,@reminder,@isarchive,@istrash,@ispin,@iscolor)       
 select 1 as flag       
 end      
 else   
   
 begin      
 begin try    
 --set @count=CONVERT(int ,@email)    
       
 select 0 as flag    
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