USE [Waterbnb]
GO
/****** Object:  StoredProcedure [dbo].[WaterLord_Insert]    Script Date: 5/25/2017 6:48:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


ALTER PROC [dbo].[WaterLord_Insert]

/*
	EXECUTE dbo.WaterLord_Insert
*/ 

as 

BEGIN 
	DECLARE @Id int = 0;
			
	DECLARE @Location nvarchar(100) = 'Sydney'
			, @NumOfGuests	int = 6
			, @Rating int = 4
			, @UserId nvarchar = 'O.Jones'
			, @Booked bit = 0
			, @FirstName nvarchar = 'Jones'
			, @LastName nvarchar = 'Olivia'
			, @DateModified datetime2(7) = GETUTCDATE()
			, @DateCreated datetime2(7) = GETUTCDATE()

	INSERT INTO [dbo].[WaterLordProfile]
				([Location]
				, [NumOfGuests]
				, [Rating]
				, [UserId]
				, [Booked]
				, [FirstName]
				, [LastName]
				, [DateModified]
				, [DateCreated])

	VALUES 
		(@Location
		, @NumOfGuests
		, @Rating
		, @UserId
		, @Booked
		, @FirstName
		, @LastName
		, @DateModified
		, @DateCreated)

	SET @Id = SCOPE_IDENTITY()

	SELECT * 
	FROM dbo.WaterLordProfile
	WHERE Id = @Id
END