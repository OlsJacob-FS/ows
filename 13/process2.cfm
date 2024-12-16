<!--- Form Validation --->
<cfparam name="FORM.id" type="integer">
<cfparam name="FORM.password" type="string">

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
    <cfoutput>
        <h1> Welcome #FORM.id#</h1>
    </cfoutput>
    
</body>
</html>