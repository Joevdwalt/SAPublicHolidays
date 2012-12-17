
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Johan van der Walt
-- Create date: 2012-12-15
-- Description:	Function that returns a 1 if the input date is a south african holiday
-- =============================================
CREATE FUNCTION CheckIfHoliday 
(
	-- Add the parameters for the function here
	@Day DATETIME
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
		DECLARE @Result int, @Records INT
		
		IF (@Day IS NULL) 
		BEGIN 
			RETURN 0
		END 
			
		SET @Day = cast(floor(cast(@Day as float)) as datetime)

		SELECT @Records = COUNT(1)
		FROM	
			PublicHoliday
		WHERE 
			DateValue = @Day
		

		IF (@Records > 0 )
			BEGIN 
				SET @Result = 1
			END 
		ELSE
			BEGIN
				SET @Result = 0
			END


	-- Return the result of the function
	RETURN @Result

END
GO

