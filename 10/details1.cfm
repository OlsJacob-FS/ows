<!--- Get Movie from Database --->
<cfquery name = "movie" datasource = "ows">
    SELECT FilmID, MovieTitle, PitchText, Summary, DateInTheaters, AmountBudgeted
    FROM Films
    WHERE FilmID = #URL.FilmID#
</cfquery>

<!--- Create HTML Page --->
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movie Details</title>
</head>
<body>
    <!--- Display Movie Details --->
    <cfoutput query="movie">
        <table>
            <tr>
                <td>
                    <img src="../images/f#filmid#.gif"
                    alt="#movietitle#"
                    align="middle">
                    <strong>#MovieTitle#</Strong>
                </td>
            </tr>
            <tr valign="top">
                <th align="right">Tag Line:</th>
                <td>#PitchText#</td>
            </tr>
            <tr valign="top">
                <th align="right">Summary:</th>
                <td>#Summary#</td>
            </tr> 
            <tr valign="top">
                <th align="right">Release Date:</th>
                <td>#dateintheaters#</td>
            </tr>
            <tr valign="top">
                <th align="right">Budget:</th>
                <td>#dollarformat(amountbudgeted)#</td>
            </tr>
        </table>
        
    </cfoutput>
</body>
</html>