USE [job_portal]
GO
/****** Object:  StoredProcedure [dbo].[sp_educational_info]    Script Date: 1/26/2017 6:01:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER procedure [dbo].[sp_educational_info]
(

@educational_ssc nvarchar(20),
@educational_hsc  nvarchar(20),
@educational_graducation nvarchar(20),
@educational_masters nvarchar(20),
@educational_phd nvarchar(20),

@ineducational_login_id_fk int 
)

as

begin

insert into educational_info_login_info(educational_ssc,educational_hsc,educational_graducation,educational_masters,educational_phd
,ineducational_login_id_fk)

values(@educational_ssc,@educational_hsc,@educational_graducation,@educational_masters,@educational_phd
,@ineducational_login_id_fk)

end