<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Loops</title>
</head>
<body>
    <!--- Start List --->
    <ul>
    <!--- Loop through numbers 1-10 --->
    <cfloop from="1" to="10" index="i">
        <!--- Write lines and output the numbers --->
        <cfoutput>
            <li>Number #i#</li>
        </cfoutput>
    </cfloop>
    </ul>

</body>
</html>