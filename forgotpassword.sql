/*---------------------------------------------------------------------------------------------------------    
 created by: Shubham    
 created on :28 june 2020    
 Modifeied on:    
 modified by:    
 test: exec forgotpassword 'kumar@gmail.com','qwerty12'    
------------------------------------------------------------------------------------------------------------*/  
  
  
CREATE proc forgotpassword    
@email varchar(50),    
@newpassword varchar(50)    
as    
begin    
begin try    
if Exists(select * from userdata where email = @email)    
begin    
update userdata set [password] = @newpassword where email = @email    
select 1 as flag      
end      
else      
begin      
select 0 as flag      
end      
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