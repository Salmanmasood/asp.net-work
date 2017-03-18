create procedure sp_professionalinfo
(
@professional_functionalarea nvarchar(20),
@professional_salary float,
@professional_experince int,
@professional_desired_salary float,
@professional_want_job_sort nvarchar(20),
@professional_area_towork nvarchar(20),
@inprofessional_login_id_fk int  



)


as 

begin 

insert into professional_info_login_information(professional_functionalarea,professional_salary,professional_experince,professional_desired_salary,
professional_want_job_sort,professional_area_towork,inprofessional_login_id_fk)

values(@professional_functionalarea,@professional_salary,@professional_experince,@professional_desired_salary,
@professional_want_job_sort,@professional_area_towork,@inprofessional_login_id_fk)


end  