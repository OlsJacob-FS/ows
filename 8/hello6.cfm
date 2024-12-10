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
    <cfset FullName = FirstName & " " & LastName>
    <cfset UpFirstName = UCase(FirstName)>
    <cfset UpLastName = UCase(LastName)>
    <cfset LowFirstName = LCase(FirstName)>
    <cfset LowLastName = LCase(LastName)>
    <cfset RevFirstName = Reverse(FirstName)>
    <cfset RevLastName = Reverse(LastName)>
    <cfset CharCount = Len(FirstName) + Len(LastName)>
    <cfset RepeatFirstName = RepeatString(FirstName, 3)>
    <cfset RepeatLastName = RepeatString(LastName, 3)>

    <cfoutput>
        <p>Hello, #FullName#, and welcome to ColdFusion!</p>
        Your name is uppercase: #UpFirstName# #UpLastName#<br>
        Your name is lowercase: #LowFirstName# #LowLastName# <br>
        Your name in reverse: #RevFirstName# #RevLastName# <br>
        Character in your name: #CharCount#<br>
        Your name 3 times: #RepeatFirstName# #RepeatLastName#<br> 
    </cfoutput>
    <br>
    <cfoutput>
        It is now #DateFormat(Now(), "DDD, MMMM DD, YYYY")#
    </cfoutput>
</body>
</html>