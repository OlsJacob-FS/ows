<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>IF Statements</title>
</head>
<body>
<cfset FirstName = "Jake">
    <cfoutput>
        Hello, #FirstName# welcome to ColdFusion! <br>
    </cfoutput>
    <cfset weekend = DayOfWeek(Now()) IS 1 OR DayOfWeek(now()) IS 7>
    <!--- If it is the weekend Print it is the weekend ---> 
    <cfif weekend>
        It is the weekend!
    <!--- If it is the not the weekend print it is a weekday --->
    <cfelse>
        It is a weekday.
    </cfif>

   <cfoutput>#weekend#</cfoutput>
</body>
</html>