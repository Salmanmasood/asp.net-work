create procedure sp_certification
(
@certification_id int,
@certification_name nvarchar(60),
@incertification_login_id_fk int
)

as

begin

insert into certification_educational_info(certification_id,certification_name,incertification_login_id_fk)

values(@certification_id,@certification_name,@incertification_login_id_fk)

end 