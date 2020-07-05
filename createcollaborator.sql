/*---------------------------------------------------------------------------------------------------------      
 created by: Shubham      
 created on :5 july 2020      
 Modifeied on:      
 modified by:      
 test: exec createcollaborator 'shubham870940@gmail.com','1' ,'sachin@gmail.com'     
------------------------------------------------------------------------------------------------------------*/  
  
  
alter Proc createcollaborator(              
@senderemail varchar(50),
@noteid varchar(50),
@recemail varchar(50)     
)        
as        
begin              
 if Exists(Select * from userdata where email=@senderemail)       
 begin
 if Exists (Select * from userdata where email=@recemail)
 begin 
 insert into collaborator(senderemail,noteid,recemail) values (@senderemail,@noteid,@recemail)         
 select 1 as flag
 end         
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