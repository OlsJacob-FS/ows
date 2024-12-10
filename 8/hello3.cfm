<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello</title>
</head>
<body>
    Hello, and welcome to ColdFusion!
    <br>
    <cfoutput>
        It is now #DateFormat(Now(), "DDD, MMMM DD, YYYY")#
    </cfoutput>
</body>
</html>