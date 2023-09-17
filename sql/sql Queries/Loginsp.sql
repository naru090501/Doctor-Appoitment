
alter PROCEDURE sp_RegisterUser 
	@fn as nvarchar(50),
	@ln as nvarchar(50),
	@mob as nvarchar(50),
	@email as nvarchar(50),
	@pass as nvarchar(200),
	@nletter as int,
	@fb as int=0,
	@twit as int=0,
	@git as int=0,
	@google as int=0,
	@gauth as int=0,
	@_2fa as int=0,
	@lang as int=0,
	@generatedLoginID nvarchar(50) OUTPUT
AS
BEGIN
	DECLARE @nextIndex INT
        DECLARE @loginID NVARCHAR(10)

        -- Calculate the next available index
        SELECT @nextIndex = ISNULL(MAX(CAST(SUBSTRING(loginid, 4, LEN(loginid)) AS int)), 0) + 1
        FROM mlogin

        -- Generate the login ID with leading zeros
        SET @loginID = cast('DOA' + RIGHT('000000' + CAST(@nextIndex AS NVARCHAR(6)), 6)as nvarchar)

        -- Check if the mobile and login combination already exists
        IF ((SELECT COUNT(login) FROM mlogin WHERE mob = @mob AND login = @fn) = 0)
			BEGIN
				declare @isactive as int
				set @isactive=1

				INSERT INTO mlogin 
				(loginid,Login, fn, ln, Password, mob, email,isactive,nletter,fb,twit,git,google,gAuth,_2fa,lang) 
				VALUES
				(@loginID,@fn, @fn, @ln, @pass, @mob, @email,@isactive,@nletter,@fb,@twit,@git,@google,@gauth,@_2fa,@lang)
					SET @generatedLoginID = @loginID

					select login from mlogin
			END
        ELSE
			BEGIN
				SELECT '1' AS ID, 'Record Already Exists!' AS Descr
			END
END
GO
