<!--- Get Movies list from database --->
<cfquery name = "movies" datasource = "ows">
    SELECT MovieTitle, PitchText 
    FROM Films 
    ORDER BY MovieTitle
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie List</title>
</head>
<body>
    <h1>Movie List</h1>

    <!--- Display movie list from database --->
    <table border="1">
        <cfoutput query="movies">
            <tr>
                <td>#MovieTitle#</td>
                <td>#PitchText#</td>
            </tr>
        </cfoutput>
    </table>
</body>
</html>