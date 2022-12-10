CREATE TABLE [dbo].[Table]
(
	[IdNum] INT NOT NULL PRIMARY KEY, 
    [UserName] NCHAR(10) NOT NULL, 
    [Password] NCHAR(20) NOT NULL, 
    [FirstName] NVARCHAR(20) NULL, 
    [LastName] NVARCHAR(20) NULL, 
    [Phone] NVARCHAR(20) NULL, 
    [isAdmin] BIT NOT NULL
)
