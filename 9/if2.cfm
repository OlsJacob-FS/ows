<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>If Statement 2</title>
</head>
<body>
<cfset FullName = "Jacob Ols">
    <cfoutput>
        Hello, #FullName# welcome to ColdFusion! <br>
    </cfoutput>
    <!--- Get dy of the week --->
    <cfset dow = DayOfWeek(Now())>
    <!--- Let the user know --->
    <cfif dow IS 1>
        Is if the weekend, but make the most of it. Tommorrow is back to work.
    <cfelseif dow IS 7>
        It is the weekend! Enjoy it! Een better tomorrow is Sunday!
    <cfelse>
        It is a weekday. Sorry!
    </cfif>
</body>
</html>