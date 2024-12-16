<!--- Get Movie List from Database --->
<cfquery name="movies" datasource="ows">
    SELECT MovieTitle, PitchText, Summary, DateInTheaters
    FROM Films
    WHERE 0=0
    <!--- Search by MovieTitle --->
    <cfif FORM.MovieTitle IS NOT "">
        AND MovieTitle LIKE '%#FORM.MovieTitle#%'
    </cfif>
    <!--- Search by PitchText --->
    <cfif FORM.PitchText IS NOT "">
        AND PitchText LIKE "%#FORM.PitchText#%"
    </cfif>
    <!--- Search by Rating --->
    <cfif FORM.RatingID IS NOT "">
        AND RatingID = #FORM.RatingID#
    </cfif>
    ORDER BY MovieTitle
</cfquery>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <!--- Display Movie List from Database --->
    <table>
        <tr>
            <th colspan="2">
                <cfoutput>
                <font size="+3">Movie List: (#Movies.RecordCount# movies)</font>
                </cfoutput>
            </th>
        </tr>


        <cfoutput query="movies">
            <tr>
                <td>
                    <font size="+2"><strong>#CurrentRow#: #MovieTitle#</strong></font><br>
                    <font size="+1"><em>#PitchText#</em></font>
                </td>
                <td>Released: #DateFormat(DateInTheaters)#</td><br>
            </tr>
            <tr>
                <td colspan="2">#Summary#</td>
            </tr>
        </cfoutput>
    </table>

</body>
</html>