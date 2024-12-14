<!--- Movie List Page --->
<cfset list_page = "movies.cfm">

<!--- Make sure FilmID was passed --->

<cfif not IsDefined("URL.FilmID")>
<!--- If it was not passed send them to list_page --->
    <cflocation url="#list_page#" addtoken="no">
</cfif>

<!--- Get Movie details --->
<cfinvoke component="movies" method="GetDetails" FilmID="#URL.FilmID#" returnvariable="movieDetails">

<!--- Make sure we have a movie returnvariable goes first I.E movieDetails--->
<cfif movieDetails.RecordCount IS 0>
<!--- if it was not send to movie list page --->
    <cflocation url="#list_page#" addtoken="no">
</cfif>

<!--- Build image paths --->
<cfset image_src = "../images/f#movieDetails.FilmID#.gif">
<cfset image_path = ExpandPath(image_src)>

<!--- Create HTML page --->
<!DOCTYPE html>
<html>
<head>
    <title>Movie Details</title>
</head>
<body>

<!--- Display Movie Details --->
 <cfoutput query="movieDetails">
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
