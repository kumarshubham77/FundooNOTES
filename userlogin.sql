/*---------------------------------------------------------------------------------------------------------    
 created by: Shubham    
 created on :25 june 2020    
 Modifeied on:    
 modified by:    
 test: exec userlogin 'shubham870940@gmail.com','qwerty'    
------------------------------------------------------------------------------------------------------------*/    
CREATE proc [dbo].[userlogin](    
@email varchar(50),    
@password varchar(50)    
)    
as     
begin    
begin try    
    
if Exists(select * from userdata where email = @email and [password] = @password)    
begin    
select 1 as flag,id,firstname,lastname,email,age,gender from userdata where email=@email    
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