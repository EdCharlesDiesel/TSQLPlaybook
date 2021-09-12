BEGIN --Creating and dropping table--
CREATE TABLE Users(
email varchar(50)
);

drop table Users;
END

BEGIN --Primary Key--
CREATE TABLE Users(
Id integer primary key,
email varchar(50)
);
END

BEGIN --Primary Key GUID--
CREATE TABLE Users(
Id uniqueidentifier primary key,
email varchar(50)
);
END

BEGIN --Primary Key Auto increment--
CREATE TABLE Users(
Id integer primary key identity(1,1),
email varchar(50)
);
END

BEGIN --Primary Key Auto increment GUID--
CREATE TABLE Users(
Id uniqueidentifier primary key default newid(),
email varchar(50)
);
END

BEGIN --Tangent GUID--
CREATE TABLE Users(
--Id integer primary key identity(1,1),
--Id uniqueidentifier primary key default newid(),
Id uniqueidentifier primary key default NEWSEQUENTIALID(), --for easily sorted by the indexer
--email varchar(50) not null
);
END

BEGIN --Composite Keys--
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


BEGIN --Defining columns--
CREATE TABLE Users(
Id integer primary key identity(1,1),
Email varchar(50) not null unique,
CreatedAt datetime,
FirstName varchar(25),
LastName varchar(25),
Bio text,
);
END

BEGIN --basic columns constraints--
CREATE TABLE Users(
Id integer primary key identity(1,1),
Email varchar(50) not null unique,
CreatedAt datetime not null,
MoneySpent decimal(10,2),
FirstName varchar(25),
LastName varchar(25),
Bio text,
);
END

BEGIN --Columns defaults--
CREATE TABLE Users(
Id integer primary key identity(1,1),
Email varchar(50) not null unique,
MoneySpent decimal(10,2),
CreatedAt datetime not null default getDate(),
FirstName varchar(25),
LastName varchar(25),
Bio text,
);
END

