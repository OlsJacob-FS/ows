<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="style.css">
    <title>Form Validation</title>
</head>
<body>
    <cfinclude template="../include/header.cfm">

    <div class="loginFormL1">
        <cfform action="process2.cfm">
            <label class="formFieldL1"> ID: </label>
            <cfinput 
                class="formFieldL1" 
                type="number" 
                name="id"
                maxLength="5"
                required="yes"
                mask="99999"
                validate="SubmitOnce"
                message="Please enter a valid ID"
                validateAt="onServer"
                 ><br>
            <label class="formFieldL1"> Password: </label>
            <input 
                class="formFieldL1" 
                type="password" 
                name="password" 
                required="yes"
                validate="SubmitOnce"
                message="Please enter a valid password"
                validateAt="onServer"
                minLength="5"
                mexLength="20" ><br>
            <input class="formFieldL1" type="submit" value="Submit">
        </cfform>
    </div>
</body>
</html>