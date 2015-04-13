
CREATE FUNCTION [dbo].[GetLocalDate]

(

    @TimezoneDiffInHour TINYINT = 8

    -- default set to 8 (GMT +8 = Singapore Timezone) 

)

RETURNS DATETIME

AS

BEGIN

    RETURN DATEADD(mi, 330 , GETUTCDATE())

END
