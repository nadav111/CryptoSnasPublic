CREATE TABLE [dbo].[Table]
(
	[IdNum] INT NOT NULL PRIMARY KEY, 
    [UserName] NVARCHAR(10) NOT NULL, 
    [Password] NVARCHAR(20) NOT NULL, 
    [FirstName] NVARCHAR(20) NULL, 
    [LastName] NVARCHAR(20) NULL, 
    [Phone] NVARCHAR(15) NULL, 
    [IsAdmin] BIT NULL
)
