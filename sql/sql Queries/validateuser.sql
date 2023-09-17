
alter PROCEDURE sp_validateUser
	@login as nvarchar(50),	
	@logintype as nvarchar(20)
AS
BEGIN
	if @logintype='login'
		begin
			select login,password,isActive from mlogin where login=@login
		end
	if @logintype='mobile'
		begin
			select login,password,isActive from mlogin where mob=@login
		end
	if @logintype='email'
		begin
			select login,password,isActive from mlogin where email=@login
		end

END
GO
