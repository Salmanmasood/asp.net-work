create procedure sp_personalinfo
(
@personal_name nvarchar(20),
@personal_contact# nvarchar(20),
@personal_emailid nvarchar(20),
@personal_address nvarchar(20),
@personal_dateofbirth nvarchar(20),
@personal_gender nvarchar(20),
@inpersonalinfo_login_id_fk int 

)

as

 begin 

 insert into personal_info_login_information(personal_name,personal_contact#,personal_emailid,personal_address,personal_dateofbirth,personal_gender,inpersonalinfo_login_id_fk)

 values(@personal_name,@personal_contact#,@personal_emailid,@personal_address,@personal_dateofbirth,@personal_gender,@inpersonalinfo_login_id_fk)


 end 