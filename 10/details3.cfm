<!-- Movie List Page --->
<cfset list_page = "movies8.cfm">

<!--- Check and make sure the film id was passed --->
<cfif not IsDefined("URL.filmid")>
<!--- It was not passed --->
    <cflocation url="#list_page#">
</cfif>

<!--- Get Movie from Database --->
<cfquery name = "movie" datasource = "ows" result="result">
    SELECT FilmID, MovieTitle, PitchText, Summary, DateInTheaters, AmountBudgeted
    FROM Films
    WHERE FilmID = #URL.FilmID#
</cfquery>

<!--- Make Sure the movie exsist --->
<cfif result.RecordCount IS 0>
    <!--- it wasnt, send to movie list --->
    <cflocation url="#list_page#">
</cfif>

<!--- Build Image Paths --->
<cfset image_src = "../images/f#movie.FilmID#.gif">
<cfset image_path = ExpandPath(image_src)>

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
                <td colspan="2">
                <!--- check if image file exists --->
                <cfif FileExists(image_path)>
                <!--- If the image exists, display it! --->
                    <img src="#image_src#"
                    alt="#movietitle#"
                    align="middle">

                    </cfif>
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

        <p> 
        <!--- Add link back to movie List --->
        <a href="#list_page#">Back to Movie List</a>
        
    </cfoutput>
</body>
</html>