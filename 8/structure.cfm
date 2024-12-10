<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Structures</title>
</head>
<body>
    <cfset FullName = "Jake Ols">
    
    <cfset contact= {
        FirstName="John",
        LastName="Doe",
        Email="johndoe@gmail.com"
    }>

    <cfoutput>
        Hello, #FullName# welcome to ColdFusion! <br>
        Contact: <a href="mailto:#contact.Email#">#contact.FirstName# #contact.LastName#</a>
    </cfoutput>

    <cfdump var="#contact#">

    This is the server
    <cfdump var="#SERVER#">

    <br>

    This is the CGI
    <cfdump var="#CGI#">
</body>
</html>