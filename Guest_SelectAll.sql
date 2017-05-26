USE [Waterbnb]
GO
/****** Object:  StoredProcedure [dbo].[Guests_SelectAll]    Script Date: 5/25/2017 6:53:46 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER proc [dbo].[Guests_SelectAll]

/* 

Execute dbo.Guests_SelectAll

*/

as 

BEGIN 

	/* Select statement used to visually inspect what we inserted */
	Select *
	From dbo.WaterbnbGuests

END
