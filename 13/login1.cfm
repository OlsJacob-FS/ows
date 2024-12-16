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
        <form action="process1.cfm" method="post">
            <label class="formFieldL1"> ID: </label><input class="formFieldL1" type="number" name="id" maxLength="5" value="id" ><br>
            <label class="formFieldL1"> Password: </label><input class="formFieldL1" type="password" name="password" mexLength="20" ><br>
            <input class="formFieldL1" type="submit" value="Submit">
        </form>
    </div>
</body>
</html>