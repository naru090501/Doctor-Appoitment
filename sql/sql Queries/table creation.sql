--loginid login fn ln mobile email password newsletter fb twitter github google 
--create table mlogin (loginid nvarchar(50) primary key,login nvarchar(50) not null,fn nvarchar(50) not null,ln nvarchar(50) not null,mob nvarchar(50) not null,email nvarchar(50) not null,password nvarchar(200),nletter int not null,fb int not null,twit int not null, git int not null,google int not null,gAuth int not null,_2fa int not null,lang int not null)
--alter table mlogin add isActive int not null
--select * from mlogin
--create table role(roleid nvarchar(50) primary key,rolename nvarchar(50) not null)
