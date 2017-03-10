create procedure sp_certification
(

@certification_name nvarchar(60),
@incertification_login_id_fk int
)

as

begin

insert into certification_educational_info(certification_name,incertification_login_id_fk)

values(@certification_name,@incertification_login_id_fk)

end 


DELETE FROM  certification_educational_info



 
select * from certification_educational_info

select * from personal_info_login_information

select * from login_information


