<!--- Get Movies list from database --->
<cfquery name = "movies" datasource = "ows">
    SELECT MovieTitle, PitchText, Summary, DateInTheaters
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
    <table>
    <tr>
        <th colspan='2'>
            <h2>Movie List</h2>
        </th>
    </tr>
    <!--- Loop through movies --->
    <cfoutput query="movies">
        <tr bgcolor="##cccccc">
            <td>
                <strong>#MovieTitle#</strong>
                <br>
                <p>#PitchText#<p>
            </td>
            <td>
                <p>#DateInTheaters#</p>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <p>#Summary#</p>
            </td>
        </tr>
    </cfoutput>
    <!--- End of Loop --->
    </table>
       
</body>
</html>