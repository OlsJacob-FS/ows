<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Forms 7</title>
</head>
<body>
    <!--- User feedback --->
        <cfoutput>
            <cfif FORM.Operation IS "Update">
            You Opted to <strong>update</strong> the #FORM.MovieTitle#
            <cfelseif FORM.Operation IS "Delete">
            You Opted to <strong>delete</strong> the #FORM.MovieTitle#
            </cfif>
        </cfoutput>

</body>
</html>