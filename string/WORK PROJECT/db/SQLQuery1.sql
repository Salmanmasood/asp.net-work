create table login_information
(
login_id int primary key identity,
login_email nvarchar(20) unique,
login_password nvarchar(20) 

)

create table personal_info_login_information
(
personal_name nvarchar(20),
personal_contact# nvarchar(20),
personal_emailid nvarchar(20),
personal_address nvarchar(20),
personal_dateofbirth nvarchar(20),
personal_gender nvarchar(20),
inpersonalinfo_login_id_fk int foreign key references login_information(login_id) 

)

create table professional_info_login_information
(
professional_functionalarea nvarchar(20),
professional_salary float,
professional_experince int,
professional_desired_salary float,
professional_want_job_sort nvarchar(20),
professional_area_towork nvarchar(20),
inprofessional_login_id_fk int foreign key references login_information(login_id) 

)

create table educational_info_login_info
(
educational_ssc nvarchar(20),
educational_hsc  nvarchar(20),
educational_graducation nvarchar(20),
educational_masters nvarchar(20),
educational_phd nvarchar(20),
educational_id int primary key identity,
ineducational_login_id_fk int foreign key references login_information(login_id) 

)


create table certification_educational_info
(
certification_id int identity,
certification_name nvarchar(60),
incertification_login_id_fk int foreign key references educational_info_login_info(educational_id) 
)




Create table tblImages_login_info
(
    Id int primary key identity,
    Name nvarchar(255),
    Size int,
    ImageData varbinary(max),
	inimage_login_id_fk int foreign key references login_information(login_id) 
)

Create procedure spUploadImage  
(
@Name nvarchar(255),
@Size int,
@ImageData varbinary(max),
@NewId int output
)
as
Begin
    Insert into tblImages_login_info(Name,Size,ImageData)
    values (@Name, @Size, @ImageData)

    Select @NewId = SCOPE_IDENTITY()
End

Create procedure spGetImageById
@Id int
as
Begin
Select ImageData
from tblImages_login_info where Id=@Id
End
