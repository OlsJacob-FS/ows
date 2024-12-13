<!--- Get Movies list from database --->
<cfquery name = "movies" datasource = "ows">
    SELECT MovieTitle, RatingID
    FROM Films 
    ORDER BY RatingID, MovieTitle
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie List</title>
</head>
<body>
    <!--- Display Movie List --->
    <h1>Movie List</h1>

    <ul>
        <!--- Loop trough ratings --->
        <cfoutput query="movies" group="RatingID">
            <li>#RatingID#</li>
            <ul>
                <!--- For Each Rating, List Movies --->
                <cfoutput>
                    <li>#MovieTitle#</li>
                </cfoutput>
            </ul>
        </cfoutput>
    </ul>
    
</body>
</html>