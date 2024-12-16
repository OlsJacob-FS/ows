<!--- Get ratings --->
<cfquery name="ratings" datasource="ows">
    SELECT RatingID, Rating
    FROM FilmsRatings
    ORDER BY RatingID
</cfquery>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search</title>
</head>
<body>
        <!--- MovieTitle search --->
        <cfinclude template = "../include/header.cfm">

    <form action="results3.cfm" method="post">
        <table align="center" border="1">
            <tr>
                <td>
                    Movie:
                </td>
                <td>
                    <input type="text" name="MovieTitle">
                </td>
            </tr>
            <tr>
                <td>
                    Tag Line:
                </td>
                <td>
                    <input type="text" name="PitchText">
                </td>
            </tr>
            <tr>
                <td>
                    Rating:
                </td>
                <td>
                    <select name="RatingID">
                    <option value="">Select Rating</option>
                        <cfoutput query="ratings">
                            <option value="#RatingID#">#Rating#</option>
                        </cfoutput>
                    </select>
                </td>
            </tr>
            <tr>
                <td colspan = "2">
                    <input type="submit" value="Search">
                </td>
            </tr>

        </table>
    </form>

    
        <cfinclude template = "./include/footer.cfm">
    
</body>
</html>