create procedure sp_educational_info
(

@educational_ssc nvarchar(20),
@educational_hsc  nvarchar(20),
@educational_graducation nvarchar(20),
@educational_masters nvarchar(20),
@educational_phd nvarchar(20),
@educational_id int,
@ineducational_login_id_fk int 
)

as

begin

insert into educational_info_login_info(educational_ssc,educational_hsc,educational_graducation,educational_masters,educational_phd,
educational_id,ineducational_login_id_fk)

values(@educational_ssc,@educational_hsc,@educational_graducation,@educational_masters,@educational_phd,
@educational_id,@ineducational_login_id_fk)

end