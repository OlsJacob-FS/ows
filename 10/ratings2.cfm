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
    <table>
  
        <!--- Loop trough ratings --->
        <cfoutput query="movies" group="RatingID">
            <tr valign="top">
                <td bgcolor = "##000000">
                    <font color="##ffffff">Rating: #RatingID#</font>
                </td>
                <td>
                <!--- For each Rating, List Movie --->
                    <cfoutput>
                        <p>#MovieTitle#</p><br>
                    </cfoutput>
                </td>
            </tr>
        </cfoutput>       
    </table>
    
</body>
</html>