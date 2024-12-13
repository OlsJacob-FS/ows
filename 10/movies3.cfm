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
    <div style="display: flex; justify-content: space-between;">
        <div style="width: 50%; margin: 0 auto;">
        <cfoutput query="movies">
        <ul>
            <li><strong>#MovieTitle#:</strong></li>
          
        </ul>
        </cfoutput>
        </div>
        <div style="width: 100%; margin: 0 auto;">
        <cfoutput query="movies">
        <p>#PitchText#</p>
        
        </cfoutput>
        </div>
    </div>
</body>
</html>