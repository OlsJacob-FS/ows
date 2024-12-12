<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Guess the Number</title>
</head>
<body>
<cfset FullName = URL.name>
    <cfoutput>
        Hello, #FullName# welcome to ColdFusion! <br>
    </cfoutput>
    <!--- Pick random Number --->
    <cfset RandomNumber = RandRange(1, 10)>
    <!--- Check if its a match  --->
    <cfif RandomNumber IS URL.guess>
     <!--- Its a match! --->
        <cfoutput>
            Yoy got it! I picked #RandomNumber#! Good Job!
        </cfoutput>
    <cfelse>
     <!--- Its not a match! --->
        <cfoutput>
            Sorry, you didn't get it. I picked #RandomNumber#. Try again!
        </cfoutput>
    </cfif>

</body>
</html>