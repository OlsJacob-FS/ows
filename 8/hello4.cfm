<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>
<body>

    <cfset Firstname = "Jake">
    <cfset LastName = "Ols">
    <cfoutput>
        Hello, #Firstname# #LastName#, and welcome to ColdFusion!
    </cfoutput>
    <br>
    <cfoutput>
        It is now #DateFormat(Now(), "DDD, MMMM DD, YYYY")#
    </cfoutput>
</body>
</html>