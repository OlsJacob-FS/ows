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
    <cfoutput query="movies">
    <ul>
        <li><strong>#MovieTitle#</strong> - #PitchText#</li>
            
    </ul>
    </cfoutput>
</body>
</html>