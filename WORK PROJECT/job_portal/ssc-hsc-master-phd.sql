create table scc_record
(
ssc_id int identity,
ssc_Grades nvarchar(20),
ssc_percentage float, 
ssc_institute nvarchar(20),
ssc_fk_id int foreign key references educational_info_login_info(educational_id)

)


create table hsc_record
(
hsc_id int identity,
hsc_Grades nvarchar(20),
hsc_percentage float, 
hsc_institute nvarchar(20), 
hsc_fk_id int foreign key references educational_info_login_info(educational_id)
)

create table grad_record
(
grad_id int identity,
grad_Grades nvarchar(20),
grad_percentage float, 
grad_institute nvarchar(20), 
grad_fk_id int foreign key references educational_info_login_info(educational_id)
)



create table masters_record
(
masters_id int identity,
masters_Grades nvarchar(20),
masters_percentage float, 
masters_institute nvarchar(20), 
masters_fk_id int foreign key references educational_info_login_info(educational_id)
)



select * from masters_record
select * from hsc_record
select * from scc_record
select * from grad_record


