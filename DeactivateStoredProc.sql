USE [C34]

CREATE PROC [dbo].[Features_Deactivate]
	@Id int

as

/*
-------TEST CODE-------
	
	DECLARE @Id int = 60

	SELECT *
	FROM dbo.Features
	WHERE Id = @Id

	EXECUTE dbo.Features_Deactivate @Id

	SELECT *
	FROM dbo.Features
	WHRE Id = @Id

*/


BEGIN

	UPDATE [dbo].[Features]
		SET 
			[DateDeactivated] = GETUTCDATE()
		WHERE Id = @Id

 END