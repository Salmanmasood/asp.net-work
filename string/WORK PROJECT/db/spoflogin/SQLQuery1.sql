create procedure splogin
(
@login_email nvarchar(20),
@login_password nvarchar(20) 

)

as

begin
insert login_information
(login_email,login_password)
values(@login_email,@login_password)


 end