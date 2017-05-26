USE [Waterbnb]
GO
/****** Object:  StoredProcedure [dbo].[Guest_Update]    Script Date: 5/25/2017 6:54:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[Guest_Update]

/*
Execute dbo.Guest_Update
*/

AS

BEGIN

	DECLARE @id int = 0;

	/* We declare variables w/ @symbol that place's the @id = 8's info into new names, that are coincidently the same name as dbo.WaterbnbGuests*/
	DECLARE @UserId nvarchar(100) = 'S.Kelly'
			, @Location nvarchar(100) = 'Dublin'
			, @TripDuration int = 10
			, @DateModified datetime2 = GETUTCDATE()
			, @FirstName nvarchar(100) = 'Siobhan'
			, @LastName nvarchar(100) = 'Kelly'
			, @NumOfGuests int = 5

			SELECT * 
			FROM dbo.WaterbnbGuests
			WHERE Id = 6
		

	UPDATE [dbo].[WaterbnbGuests]
	   SET [UserId] = @UserId
		  ,[Location] = @Location
		  ,[TripDurationDays] = @TripDuration
		  ,[DateModified] = @DateModified
		  ,[FirstName] = @FirstName
		  ,[LastName] = @LastName
		  ,[NumOfGuests] = @NumOfGuests                                                        
		
		WHERE Id = 6

		SELECT * 
		FROM dbo.WaterbnbGuests
		WHERE Id = @id


END

