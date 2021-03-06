/*---------------------------------------------------------------------------------------------------------    
 created by: Shubham    
 created on :5 july 2020    
 Modifeied on:    
 modified by:    
 test: exec createlabel 'shubham870940@gmail.com','1','1'    
------------------------------------------------------------------------------------------------------------*/


CREATE Proc createlabel(            
@email varchar(50),
@label varchar(50),
@noteid varchar(50)     
)      
as      
begin            
 if Exists(Select * from userdata where email=@email)      
 begin
 insert into labels(email,label,noteid) values (@email,@label,@noteid)       
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