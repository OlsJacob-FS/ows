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
    <cfset UpFirstName = UCase(FirstName)>
    <cfoutput>
        <p>Hello, #Firstname# #LastName#, and welcome to ColdFusion!</p>
        Your name is uppercase: #UCase(firstname)# #UCase(lastname)#<br>
        Your name is lowercase: #LCase(firstname)# #LCase(lastname)# <br>
        Your name in reverse: #Reverse(firstname)# #Reverse(lastname)# <br>
        Character in your name: #Len(firstname)# #Len(lastname)#<br>
        Your name 3 times: #RepeatString(firstname, 3)# #RepeatString(lastname, 3)#<br>
        Your up case name: #UpFirstName#
    </cfoutput>
    <br>
    <cfoutput>
        It is now #DateFormat(Now(), "DDD, MMMM DD, YYYY")#
    </cfoutput>
</body>
</html>