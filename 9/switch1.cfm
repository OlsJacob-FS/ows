<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Switch</title>
</head>
<body>
<cfset FullName = "Jacob Ols">
<cfoutput>
    Hello, #FullName# welcome to ColdFusion!<br>
</cfoutput>
<!--- Get dy of the week --->
<cfset dow = DayOfWeek(Now())>
<!--- Let the user know --->
<cfswitch expression="#dow#">

    <!--- Is it sunday? --->
    <cfcase value="1">
            It is Sunday! Enjoy it! Tomorrow is Monday!
    </cfcase>
    <!--- Is it Saturday? --->
    <cfcase value="7">
            It is Saturday! Enjoy it! Tomorrow is Sunday!
    </cfcase>
    <!--- Is it a weekday? --->
    <cfdefaultcase>
            It is a weekday. Sorry!
    </cfdefaultcase>
</cfswitch>
</body>
</html>