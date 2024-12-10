<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>
<body>
    <cfset names=ArrayNew(2)>
    <cfset names[1][1]="Jake">
    <cfset names[1][2]="Ols">
    <cfset names[2][1]="John">
    <cfset names[2][2]="Doe">
    <cfset names[3][1]="Jane">
    <cfset names[3][2]="Smith">

    <cfoutput>
        Hello, #names[1][1]# #names[1][2]# welcome to ColdFusion!
    </cfoutput>

    <cfdump var="#names#">
</body>
</html>