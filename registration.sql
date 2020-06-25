USE [fundoodb]
GO
/****** Object:  StoredProcedure [dbo].[Registrtaion]    Script Date: 6/25/2020 8:25:55 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
---------------------------------------------------------------------------------------------------------------  
 -- created by :Shubham   
 --- created on:25 jun 2020  
 --test : Exec Registration 'shubham','kumar','shubham870940@gmail.com','qwerty',22,'male'  
---------------------------------------------------------------------------------------------------------------  
ALTER Proc [dbo].[Registrtaion](  
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
 set @count = (select IsNull(max(id),0) from userregistration)  
 if(@count=0)  
 begin  
 set @id=1000  
 end  
 else  
 begin  
 set @id=@count+1  
 end  
 if Exists(Select * from userregistration where email=@email)  
 begin   
 select 0 as flag   
 end  
 else  
 begin  
 begin try
 --set @count=CONVERT(int ,@email)
 insert into userregistration (id,firstname,lastname,email,password,age,gender) values (@id,@firstname,@lastname,@email,@password,@age,@gender)  
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