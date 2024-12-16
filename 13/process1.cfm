<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Validation</title>
</head>
<body>
    <!--- Header --->
    <cfinclude template="../include/header.cfm">
    <!--- Make sure UserName is not empty --->
    <cfif Len(Trim(FORM.id)) EQ 0>
        <h1> Error: ID Required</h1>
        <cfabort>
        <cfelse>
        <cfoutput>
            <h1> Welcome, #FORM.id#</h1>
        </cfoutput>
        
    </cfif>

    <!--- Make sure ID is a number --->
    <cfif IsNumeric(FORM.id) IS "No">
        <h1> Error: ID must be a number</h1>
        <cfabort>
    </cfif>

    <!--- Make sure Password is not empty --->
    <cfif Len(Trim(FORM.password)) EQ 0>
        <h1> Error: Password Required</h1>
        <cfabort>
        <cfelse>
    </cfif>
</body>
</html>