Use TSQLPlaybook;
BEGIN --Adding Data to a many to many relation --

insert into Users(Email)
values('test@test.com');

insert into Roles(Name)
values('Developer');

insert into UserRole(UserId, RoleID)
values(1,1);


CREATE TABLE Users(
Id integer primary key identity(1,1),
email varchar(50) not null
);

CREATE TABLE Users_Roles(
UserId integer,
RoleId integer,
primary key (UserId,RoleId)
);

CREATE TABLE Roles(
Id integer primary key identity(1,1),
name varchar(50) not null
);


END